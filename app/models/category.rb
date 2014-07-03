class Category < ActiveRecord::Bse
	belongs_to :store
	has_many :subcategories

end