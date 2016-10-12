class InventoryCategoriesController < ApplicationController
	def index
		@inventory_categories = InventoryCategory.all
	end

	def show
		@inventory_category = InventoryCategory.find(params[:id])
    @inventories = @inventory_category.inventories
	end

	def new
		@inventory_category = InventoryCategory.new
	end

	def edit
	end

	def create
		@inventory_category = InventoryCategory.new(inventory_category_params)

    if @inventory_category.save
      redirect_to inventory_category_inventories_path(@inventory_category), notice: 'Inventory Category was successfully created.'
    else
      render :new
    end
	end

	def update
    if @inventory_category.update(accessory_params)
      redirect_to inventory_category_inventories_path(@inventory_category), notice: 'Inventory Category was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  	@inventory_category = InventoryCategory.find(params[:id])
    @inventory_category.destroy
    redirect_to inventory_categories_path, notice: 'Inventory Category was successfully destroyed.'
  end

  def destroy_inventory
    @inventory_category = InventoryCategory.find(params[:inventory_category_id])
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
  end

private
  def inventory_category_params
    params.require(:inventory_category).permit(:name)
  end
end