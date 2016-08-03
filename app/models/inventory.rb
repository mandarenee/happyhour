class Inventory < ActiveRecord::Base
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	belongs_to :inventory_category
end
