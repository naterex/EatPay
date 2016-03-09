class OrdersController < ApplicationController
  
  skip_load_and_authorize_resource only: :landing
  load_and_authorize_resource

  before_action :authenticate_user!, only: [:show, :new, :edit, :create, :update, :destroy, :update_foods_status, :update_drinks_status]
  before_action :set_order, only: [:show, :edit, :update, :destroy, :order_success]

  # GET /orders
  # GET /orders.json

  def landing
    render layout: false
  end

  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  def order_success
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { render :order_success }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { render :order_success }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, flash: {info: "Order was successfully deleted."}  }
      format.json { head :no_content }
    end
  end

  # update foods status
  def update_foods_status
    @orders = Order.all
    order_id = Order.find(params[:id])
    if FoodsOrder.where(order_id: order_id).update_all(:status => 1)
      redirect_to kitchen_foods_path
    else
      flash[:danger] = "You're not allowed to delete this food order."
      redirect_to root_path
    end
  end

  # update drinks status
  def update_drinks_status
    @orders = Order.all
    order_id = Order.find(params[:id])
    if DrinksOrder.where(order_id: order_id).update_all(:status => 1)
      redirect_to kitchen_drinks_path
    else
      flash[:danger] = "You're not allowed to delete this drink order."
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:table_number, foods_orders_attributes: [:id, :quantity, :takeaway, :status, :food_id ,:_destroy], drinks_orders_attributes: [:id, :quantity, :takeaway, :status, :drink_id, :_destroy])
    end
end
