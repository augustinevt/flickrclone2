class CategoriesController < ApplicationController
  def create
    if Category.find_by(name: category_params[:name])
      @category = Category.find_by(name: category_params[:name])
    else
      @category = Category.create(name: category_params[:name])
    end

    @tag = @category.category_tags.new(category: @category, image_id: category_params[:image_id])

    if @tag.save
      flash[:notice] = "Category saved"
    else
      flash[:alert] = "Category not saved"
    end
    
    redirect_to image_path(category_params[:image_id])
  end

  def new
  end

  def show
  end

  private

  def category_params
    params.require(:category).permit(:name, :image_id)
  end
end
