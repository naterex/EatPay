class AddTakeawayToFoodsOrders < ActiveRecord::Migration
  def change
    add_column :foods_orders, :takeaway, :boolean
  end
end
