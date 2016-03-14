class Drink < ActiveRecord::Base

	has_many :drinks_order, dependent: :destroy

	before_validation :capitalize
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :price

	private
	   def capitalize
	     self.name = self.name.titleize
	   end

end
