class CartsController < ApplicationController
	before_action :set_cart, only: [:show]

	def edit
		item = Item.find(params[:id])
		current_user.carts.last.items << item

		redirect_to :back
	end


	def show
	end


	private

	def set_cart
		@cart = current_user.carts.last
	end

end