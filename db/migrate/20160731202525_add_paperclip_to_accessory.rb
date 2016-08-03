class AddPaperclipToAccessory < ActiveRecord::Migration
  def change
  	add_attachment :accessories, :image
  end
end
