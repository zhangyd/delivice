class Catagory < ActiveRecord::Bse
	belongs_to :stores
	has_many :subcatagories

end