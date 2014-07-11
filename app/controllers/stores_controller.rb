class StoresController < ApplicationController
	before_action :set_store, only: [:show]

	def index
		@stores = Store.all
	end

	def show
		@categories = @store.categories
		@subcategories = @store.subcategories
		@items = @store.items
		if user_signed_in?
			@cart = current_user.carts.last
		else
			@cart = Cart.last
		end
		quantities = []
		items = @store.subcategories[0].items	
		items.each do |item|
			if user_signed_in?
				ownership = Ownership.where(:item_id => item.id, :cart_id => current_user.carts.last.id).first
			else
				ownership = nil
			end
			if ownership 
				quantities << ownership.quantity
			else
				quantities << 0
			end
		end	
		@quantities = quantities
	end

	private 
	def set_store
		@store = Store.find(params[:id])
	end

end

