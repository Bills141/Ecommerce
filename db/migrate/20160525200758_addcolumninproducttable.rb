class Addcolumninproducttable < ActiveRecord::Migration
  def change
  	add_column :products, :prize, :integer
  end
end
