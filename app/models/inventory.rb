class Inventory < ActiveRecord::Base
	has_attached_file :image, styles: { small: "100x100", med: "500x500", large: "1000x1000" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	belongs_to :inventory_category
end
