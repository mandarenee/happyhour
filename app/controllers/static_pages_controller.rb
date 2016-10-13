class StaticPagesController < ApplicationController
	def home
	end

	def todolist
	end

	def all_inventory_offered
		@inventory_categories = InventoryCategory.all
		@accessory_categories = AccessoryCategory.all
	end
	
	def contact
	end
end