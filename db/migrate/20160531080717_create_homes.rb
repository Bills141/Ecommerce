class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
    	t.integer :product_id

      t.timestamps null: false
    end
  end
end
