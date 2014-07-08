class StoresController < ApplicationController
	

	def index
		# @kroger_categories = Store.find(1).categories
		# @kroger_subcategories = Store.find(1).subcategories
		# @kroger_items = Store.find(1).items

		# @kroger_categories = Category.where(:store_id => 1)

		@stores = Store.all
	end


	# def kroger
	# 	# @kroger_categories = Category.where(:store_id => 1)
	# 	@kroger_categories = Store.find(1).categories
	# 	@kroger_subcategories = Store.find(1).subcategories
	# 	@kroger_items = Store.find(1).items
	# end


	# def wholefoods
	# 	@wholefoods_categories = Store.find(2).categories
	# 	@wholefoods_subcategories = Store.find(2).subcategories
	# 	@wholefoods_items = Store.find(2).items
	# end


	# def costco
	# 	@costco_categories = Category.where(:store_id => 3)
	# end

	def show
		
	end

end