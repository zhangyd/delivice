class Ownership < ActiveRecord::Base
	belongs_to :item
	belongs_to :cart

	validates :item, :cart, :presence => true
end