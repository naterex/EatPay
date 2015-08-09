class Food < ActiveRecord::Base
	has_many :foods_order, dependent: :destroy
	validates :name, :presence => true, :uniqueness => true
end
