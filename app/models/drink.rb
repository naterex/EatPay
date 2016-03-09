class Drink < ActiveRecord::Base
	
	has_many :drinks_order, dependent: :destroy

	before_validation :capitalize
	validates :name, :presence => true, :uniqueness => true

	private
	   def capitalize
	     self.name = self.name.titleize 
	   end

end
