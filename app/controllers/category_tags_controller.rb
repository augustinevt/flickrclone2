class CategoryTagsController < ApplicationController

  def create
    @tag = CategoryTag.new(category_tags_params)
  end

  private

  def category_tags_params
    params.require(:category_tags).permit(:name, :user_id)
  end
end
