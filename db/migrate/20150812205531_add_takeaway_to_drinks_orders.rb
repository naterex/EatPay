class AddTakeawayToDrinksOrders < ActiveRecord::Migration
  def change
    add_column :drinks_orders, :takeaway, :boolean
  end
end
