class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :name
      # t.string :prize

      t.timestamps null: false
    end
  end
end
