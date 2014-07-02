class Item < ActiveRecord::Base
	has_many :carts
	has_many :favorites
	belongs_to :subcatagories

end