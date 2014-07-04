class Category < ActiveRecord::Base
	belongs_to :store
	has_many :subcategories

end