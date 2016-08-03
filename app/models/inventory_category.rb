class InventoryCategory < ActiveRecord::Base
	has_many :inventories
end
