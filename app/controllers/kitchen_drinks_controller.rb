class KitchenDrinksController < ApplicationController
  before_action :authenticate_user!

  def index
  	#@orders = Order.all.order(created_at: :asc)
  	@orders = Order.joins(:drinks_orders).where('drinks_orders.status' => 0).uniq
    # @orders = Order.joins(:drinks_orders).where('drinks_orders.status' => 1).uniq

  end
end
