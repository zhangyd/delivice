class SubcategoriesController < ApplicationController
	before_action :set_subcategory, only: [:show]

	def show
		@items = Item.where(:subcategory_id => params[:id])
		@categories = @subcategory.category.store.categories
	end


	private 
	def set_subcategory
		@subcategory = Subcategory.find(params[:id])
	end

end