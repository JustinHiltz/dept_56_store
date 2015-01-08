class Product < ActiveRecord::Base
	validates :item_number, :name, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }
	validates :item_number, uniqueness: true
end
