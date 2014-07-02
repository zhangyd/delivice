class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
    	t.integer :store_id
    	t.integer :item_id

    	t.timestamps
    end
  end
end
