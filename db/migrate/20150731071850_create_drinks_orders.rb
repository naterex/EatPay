class CreateDrinksOrders < ActiveRecord::Migration
  def change
    create_table :drinks_orders do |t|
      t.integer :drink_id
      t.integer :order_id
      t.integer :quantity
      t.integer :status

      t.timestamps null: false
    end
  end
end
