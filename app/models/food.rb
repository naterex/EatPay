class Food < ActiveRecord::Base
	has_many :foods_order, dependent: :destroy
end
