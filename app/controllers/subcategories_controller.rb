class SubcategoriesController < ApplicationController
	before_action :set_subcategory, only: [:show]

	# def index
	# 	@subcategories = Store.find(1).subcategories
	# end

	def show
		@items = Item.where(:subcategory_id => params[:id])

		@kroger_categories = Store.find(1).categories
		@kroger_subcategories = Store.find(1).subcategories
	end


	private 
	def set_subcategory
		@subcategory = Subcategory.find(params[:id])
	end

end