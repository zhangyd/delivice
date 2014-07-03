class Item < ActiveRecord::Base
	has_many :carts
	has_many :favorites
	has_many :users :through, => :favorites
	belongs_to :subcategory

end