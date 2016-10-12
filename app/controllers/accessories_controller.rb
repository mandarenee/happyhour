class AccessoriesController < ApplicationController
	def index
    @accessory_category = AccessoryCategory.find(params[:accessory_category_id])
		@accessories = @accessory_category.accessories
	end

	def show
		@accessory_category = AccessoryCategory.find(params[:accessory_category_id])
    @accessory = @accessory_category.accessories.find(params[:id])
	end

	def new
		@accessory_category = AccessoryCategory.find(params[:accessory_category_id])
    @accessory = @accessory_category.accessories.build
	end

	def edit
    @accessory_category = AccessoryCategory.find(params[:accessory_category_id])
    @accessory = @accessory_category.accessories.find(params[:id])
	end

	def create
		@accessory_category = AccessoryCategory.find(params[:accessory_category_id])
    @accessory = @accessory_category.accessories.build(accessory_params)

    if @accessory.save
      redirect_to accessory_categories_path, notice: 'Accessory was successfully created.'
    else
      render :new
    end
	end

	def update
    @accessory_category = AccessoryCategory.find(params[:accessory_category_id])
    @accessory = @accessory_category.accessories.find(params[:id])

    if @accessory.update(accessory_params)
      redirect_to accessory_categories_path, notice: 'Accessory was successfully created.'
    else
      render :edit
    end
  end

  def destroy
  	@accessory_category = AccessoryCategory.find(params[:accessory_category_id])
    @accessory = Accessory.find(params[:id])
    @accessory.destroy

    redirect_to accessory_categories_path
  end

private
  def accessory_params
    params.require(:accessory).permit(:name, :image)
  end
end