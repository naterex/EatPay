class AddTotalToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :food_total, :integer
    add_column :orders, :drink_total, :integer
  end
end
