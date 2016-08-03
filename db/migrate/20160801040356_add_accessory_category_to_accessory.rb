class AddAccessoryCategoryToAccessory < ActiveRecord::Migration
  def change
  	add_reference :accessories, :accessory_category, index: true
  end
end
