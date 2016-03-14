class AddPriceToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :price, :integer
  end
end
