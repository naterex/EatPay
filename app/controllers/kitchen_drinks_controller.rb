class KitchenDrinksController < ApplicationController

	before_action :authenticate_user!
	
  def index
  	@orders = Order.all.order(created_at: :asc)
  end
end
