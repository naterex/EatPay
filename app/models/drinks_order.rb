class DrinksOrder < ActiveRecord::Base
	belongs_to :drink
  	belongs_to :order
end
