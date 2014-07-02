class Store < ActiveRecord::Base
	has_many :catagories
	has_many :subcatagories, :through => :catagories
	has_many :items, :through => :subcatagories

end