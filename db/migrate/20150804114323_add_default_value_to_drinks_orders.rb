class AddDefaultValueToDrinksOrders < ActiveRecord::Migration
  def change
  	change_column_default(:drinks_orders, :status, 0)
  end
end
