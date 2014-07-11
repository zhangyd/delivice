class OwnershipsController < ApplicationController
	before_action :set_ownership, only: [:destroy]
	before_action :authenticate_user!, :only => [:create,:destroy]

	def new
		@ownership = Ownership.new
	end


	def create
		cart = Cart.find(params[:cart_id])
		item = Item.find(params[:item_id])

		ownership = item.ownerships.where(:cart => cart).first

		if ownership
			ownership.increment!(:quantity)
		else
			cart.items << item
		end

		redirect_to :back
	end


	def destroy
		if @ownership
			@ownership.decrement!(:quantity)
			if @ownership.quantity == 0 
				@ownership.destroy
			end
		end

		redirect_to :back
	end



	private 

	def set_ownership
		@ownership = Ownership.where(:item_id => params[:item_id], :cart => params[:cart_id]).first
	end

end
