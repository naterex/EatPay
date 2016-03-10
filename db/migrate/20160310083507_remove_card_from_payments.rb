class RemoveCardFromPayments < ActiveRecord::Migration
  def change
    remove_column :payments, :card, :string
  end
end
