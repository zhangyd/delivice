class ItemsController < ApplicationController
	before_action :set_item, only: [:show, :edit, :update]

	def index
		@items = Item.all
	end


	def new
		@item = Item.new
	end


	def create
		@item = Item.new(item_params)
		@item.save
		redirect_to items_path
	end


	def show
	end


	def edit		
	end


	def update
		respond_to do |format|
    	if @item.update(item_params)
        	format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        	format.json { render :show, status: :ok, location: @item }
        else
        	format.html { render :edit }
        	format.json { render json: @item.errors, status: :unprocessable_entity }
      	end
    	end
	end


	private

	def item_params
		params.require(:item).permit(:name, :price, :unit, :subcategory_id, :picture)
	end

	def set_item
		@item = Item.find(params[:id])
	end

end