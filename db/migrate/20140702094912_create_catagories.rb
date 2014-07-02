class CreateCatagories < ActiveRecord::Migration
  def change
    create_table :catagories do |t|
    	t.string :name
    	t.integer :store_id

    	t.timestamps
    end
  end
end
