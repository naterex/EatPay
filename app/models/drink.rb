class Drink < ActiveRecord::Base
	has_many :drinks_order, dependent: :destroy
end
