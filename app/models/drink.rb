class Drink < ActiveRecord::Base
	
	has_many :drinks_order, dependent: :destroy
	validates :name, :presence => true, :uniqueness => true

	before_save :capitalize

	private
	   def capitalize
	     self.name = self.name.titleize 
	   end

end
