class PaymentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_order, only: [:new, :create]

  def new
    @payment = Payment.new()
    gon.client_token = generate_client_token
  end

  def create

    unless payment_params[:payment_type] == "cash"

      @result = Braintree::Transaction.sale(
        amount: payment_params[:amount],
        payment_method_nonce: params[:payment_method_nonce])

      if @result.success?
        case @result.transaction.payment_instrument_type
          when "credit_card"
            payment_type = "credit_card"
          when "paypal_account"
            payment_type = "paypal_account"
        end

        @payment = Payment.new(payment_params)
        @payment.order_id = @order.id
        @payment.payment_type = payment_type
        @payment.save

        @order[:paid] = true
        @order.save

        redirect_to @order, notice: "Order #{@order.id} successfully paid."
      else
        flash[:alert] = "Error while processing your transaction. Please try again."
        gon.client_token = generate_client_token
        render :new
      end

    else
      @payment = Payment.new(payment_params)
      @payment.order_id = @order.id
      @payment.save

      @order[:paid] = true
      @order.save

      redirect_to @order, notice: "Order #{@order.id} successfully paid."

    end

  end


  private

    def find_order
      @order = Order.find(params[:order_id])
    end

    def generate_client_token
      Braintree::ClientToken.generate
    end

    def payment_params
      params.require(:payment).permit(:amount, :payment_type)
    end
end
