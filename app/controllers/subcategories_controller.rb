class SubcategoriesController < ApplicationController
	before_action :set_subcategory, only: [:show]

	# def index
	# 	@subcategories = Store.find(1).subcategories
	# end

	def show
		@items = Item.where(:subcategory_id => params[:id])
	end


	private 
	def set_subcategory
		@subcategory = Subcategory.find(params[:id])
	end

end