class CategoriesController < ApplicationController
	before_action :set_category, only: [:show]

	# def index
	# 	@categories = Store.find(1).categories
	# 	# @subcategories = Store.find(1).categories[param[:id]].subcategories
	# end

	def show
		@subcategories = Subcategory.where(:category_id => params[:id])


		@kroger_categories = Store.find(1).categories
		@kroger_subcategories = Store.find(1).subcategories
	end


	private 
	def set_category
		@category = Subcategory.find(params[:id])
	end

end
