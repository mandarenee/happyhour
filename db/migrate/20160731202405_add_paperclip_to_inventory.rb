class AddPaperclipToInventory < ActiveRecord::Migration
  def change
  	add_attachment :inventories, :image
  end
end
