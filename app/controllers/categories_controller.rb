class CategoriesController < ApplicationController
	before_action :set_category, only: [:show]


	def show
		@categories = @category.store.categories
		@subcategories = @category.store.subcategories.where(:category_id => params[:id])
		if user_signed_in?
			@cart = current_user.carts.last
		else
			@cart = Cart.last
		end
	end


	private 
	def set_category
		@category = Category.find(params[:id])
	end

end
