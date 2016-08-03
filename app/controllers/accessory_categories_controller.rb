class AccessoryCategoriesController < ApplicationController
	def index
		@accessory_categories = AccessoryCategory.all
	end

	def show
		@accessory_category = AccessoryCategory.find(params[:id])
    @accessories = @accessory_category.accessories
	end

	def new
		@accessory_category = AccessoryCategory.new
	end

	def edit
	end

	def create
		@accessory_category = AccessoryCategory.new(accessory_category_params)

    if @accessory_category.save
      redirect_to accessory_category_accessories_path(@accessory_category), notice: 'Accessory Category was successfully created.'
    else
      render :new
    end
	end

	def update
    if @accessory_category.update(accessory_params)
      redirect_to accessory_category_accessories_path(@accessory_category), notice: 'Accessory Category was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  	@accessory_category = AccessoryCategory.find(params[:id])
    @accessory_category.destroy
    redirect_to accessory_categories_path, notice: 'Accessory Category was successfully destroyed.'
  end

private
  def accessory_category_params
    params.require(:accessory_category).permit(:name)
  end
end