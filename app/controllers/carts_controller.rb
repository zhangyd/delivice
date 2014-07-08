class CartsController < ApplicationController
	before_action :set_cart, only: [:show, :remove]
	before_action :authenticate_user!, :only => [:edit,:remove]

	def edit
		item = Item.find(params[:id])
		current_user.carts.last.items << item

		redirect_to :back
	end


	def remove
		item = Item.find(params[:id])
		current_user.carts.last.items.delete(item)

		redirect_to :back
	end


	def show
		@kroger_categories = Store.find(1).categories
		@kroger_subcategories = Store.find(1).subcategories
	end


	private

	def set_cart
		@cart = current_user.carts.last
	end

end