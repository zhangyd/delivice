class DeleteCartsItemsJoinTable < ActiveRecord::Migration
  def change
  	drop_join_table :carts, :items
  end
end
