class Subcatagory < ActiveRecord::Base
	belongs_to :catagories
	has_many :items

end