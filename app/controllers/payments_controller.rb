class PaymentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_order, only: [:new]

  def new
    @payment = Payment.new
    gon.client_token = generate_client_token
  end

  def create
  end


  private

    def find_order
      @order = Order.find(params[:order_id])
    end

    def generate_client_token
      Braintree::ClientToken.generate
    end

end
