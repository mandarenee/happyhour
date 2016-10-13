class Accessory < ActiveRecord::Base
	has_attached_file :image, styles: { small: "100x100", med: "500x500", large: "1000x1000" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	belongs_to :accessory_category
end
