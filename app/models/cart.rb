class Cart < ActiveRecord::Base
	has_many :items
	belongs_to :users

end

