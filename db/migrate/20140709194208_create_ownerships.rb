class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
    	t.integer :cart_id
    	t.integer :item_id
    	t.integer :quantity, :default => 1

    	t.timestamps
    end
  end
end
