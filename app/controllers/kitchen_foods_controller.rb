class KitchenFoodsController < ApplicationController

	before_action :authenticate_user!
	
  def index
  	#@orders = Order.all.order(created_at: :asc)
  	@orders = Order.joins(:foods_orders).where('foods_orders.status' => 0).uniq
  end
end
