class StoresController < ApplicationController

	def kroger
		# @kroger_categories = Store.find(1).categories
		# @kroger_subcategories = Store.find(1).subcategories
		# @kroger_items = Store.find(1).items

		@kroger_items = Item.where(:subcategory_id => 1)
	end

end