class SubcategoriesController < ApplicationController
	before_action :set_subcategory, only: [:show]

	def show
		@items = Item.where(:subcategory_id => params[:id])
		@categories = @subcategory.category.store.categories
		if user_signed_in?
			@cart = current_user.carts.last
		else
			@cart = Cart.last
		end
	end


	private 
	def set_subcategory
		@subcategory = Subcategory.find(params[:id])
	end

end