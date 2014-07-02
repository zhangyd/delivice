class CreateSubcatagories < ActiveRecord::Migration
  def change
    create_table :subcatagories do |t|
    	t.string :name
    	t.integer :catagory_id

    	t.timestamps
    end
  end
end
