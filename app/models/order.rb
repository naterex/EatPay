class Order < ActiveRecord::Base
	has_many :foods_orders
	has_many :foods, through: :foods_orders

	has_many :drinks_orders
	has_many :drinks, through: :drinks_orders

	accepts_nested_attributes_for :foods_orders, allow_destroy: true
	accepts_nested_attributes_for :drinks_orders, allow_destroy: true

  has_one :payment

  validates_presence_of :food_total
  validates_presence_of :drink_total

  def calculate_total

    food_total = 0
    self.foods_orders.each do |order|
      food_total += order.food.price * order.quantity
    end
    self.food_total = food_total

    drink_total = 0
    self.drinks_orders.each do |order|
      drink_total += order.drink.price * order.quantity
    end
    self.drink_total = drink_total

    self.grand_total = food_total + drink_total
  end

end
