class CreateCartsItemsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :carts, :items
  end
end

