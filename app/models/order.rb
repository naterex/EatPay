class Order < ActiveRecord::Base
	has_many :foods_orders
	has_many :foods, through: :foods_orders

	has_many :drinks_orders
	has_many :drinks, through: :drinks_orders

	accepts_nested_attributes_for :foods_orders, allow_destroy: true
	accepts_nested_attributes_for :drinks_orders, allow_destroy: true

  validates_presence_of :food_total
  validates_presence_of :drink_total

end
