class CartsController < ApplicationController
	before_action :set_cart, only: [:show, :remove]
	before_action :authenticate_admin!, :only => :index

	def index
		@all_carts = Cart.all
		@undelivered_carts = Cart.where(:status => "paid")
	end


	def show
	end


	private

	def set_cart
		@cart = current_user.carts.last
	end

end