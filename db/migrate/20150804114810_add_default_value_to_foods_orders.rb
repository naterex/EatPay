class AddDefaultValueToFoodsOrders < ActiveRecord::Migration
  def change
  	change_column_default(:foods_orders, :status, 0)
  end
end
