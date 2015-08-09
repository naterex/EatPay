class Drink < ActiveRecord::Base
	
	has_many :drinks_order, dependent: :destroy
	validates :name, :presence => true, :uniqueness => true

end
