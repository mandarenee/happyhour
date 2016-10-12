class InventoriesController < ApplicationController
	def index
    @inventory_category = InventoryCategory.find(params[:inventory_category_id])
		@inventories = @inventory_category.inventories
	end

	def show
    @inventory_category = InventoryCategory.find(params[:inventory_category_id])
		@inventory = @inventory_category.inventories.find(params[:id])
	end

	def new
		@inventory_category = InventoryCategory.find(params[:inventory_category_id])
    @inventory = @inventory_category.inventories.build
	end

	def edit
    @inventory_category = InventoryCategory.find(params[:inventory_category_id])
    @inventory = @inventory_category.inventories.find(params[:id])
	end

	def create
    @inventory_category = InventoryCategory.find(params[:inventory_category_id])
		@inventory = @inventory_category.inventories.build(inventory_params)

    if @inventory.save
      redirect_to inventory_categories_path, notice: 'Inventory was successfully created.'
    else
      render :new
    end
	end

	def update
    @inventory_category = InventoryCategory.find(params[:inventory_category_id])
    @inventory = @inventory_category.inventories.find(params[:id])

    if @inventory.update(inventory_params)
      redirect_to inventory_categories_path, notice: 'Inventory was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  	@inventory_category = InventoryCategory.find(params[:inventory_category_id])
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
    
    redirect_to inventory_categories_path
  end

private
  def inventory_params
    params.require(:inventory).permit(:name, :image)
  end

end