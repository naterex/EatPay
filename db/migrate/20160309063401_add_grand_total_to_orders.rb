class AddGrandTotalToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :grand_total, :integer
  end
end
