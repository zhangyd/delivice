class ChargesController < ApplicationController
	def new
		@amount = ((params[:amount].to_f) * 100).to_i
	end

	def create
	  # Amount in cents
	  #@amount = ((params[:amount].to_f) * 100).to_i
	  #@amount = 500
	  customer = Stripe::Customer.create(
	    :email => 'example@stripe.com',
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => params[:amount],
	    :description => 'Rails Stripe customer',
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end
end
