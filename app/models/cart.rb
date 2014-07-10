class Cart < ActiveRecord::Base
	# has_and_belongs_to_many :items
	belongs_to :user
	has_many :ownerships
	has_many :items, :through => :ownerships

end

