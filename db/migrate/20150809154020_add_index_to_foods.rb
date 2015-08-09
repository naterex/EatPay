class AddIndexToFoods < ActiveRecord::Migration
  def change
    
    add_index :foods, :name, unique: true
  end
end
