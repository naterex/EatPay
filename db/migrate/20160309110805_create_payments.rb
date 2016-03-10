class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :order_id
      t.string :type
      t.string :card
      t.timestamps null: false
    end

    add_index :payments, [:order_id], unique: true
  end
end
