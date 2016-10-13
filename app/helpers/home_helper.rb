module HomeHelper
	def first_image
		Inventory.where(name: 'Champagne Barback II').first
	end

	def second_image
		Accessory.where(name: 'Bar Serviceware II').first
	end
	
	def third_image
		Inventory.where(name: 'Julep Bar III').first
	end

	def fourth_image
		Accessory.where(name: 'Word Sign III').first
	end
end
