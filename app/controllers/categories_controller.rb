class CategoriesController < ApplicationController
	before_action :set_category, only: [:show]


	def show
		@categories = @category.store.categories
		@subcategories = @category.store.subcategories.where(:category_id => params[:id])
	end


	private 
	def set_category
		@category = Category.find(params[:id])
	end

end
