class AddInventoryCategoryToInventory < ActiveRecord::Migration
  def change
  	add_reference :inventories, :inventory_category, index: true
  end
end
