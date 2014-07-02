class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
    	t.integer :user_id
    	t.string :status
    	t.string :delivery_date
    	t.string :delivery_time

    	t.timestamps
    end
  end
end
