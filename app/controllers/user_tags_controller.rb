class UserTagsController < ApplicationController

  def create
    @tag = UserTag.new(user_tags_params)
    @tag.owner = current_user
    @tag.image_id = params[:image_id]
  end

  private

  def user_tags_params
    params.require(:user_tags).permit(:user_id)
  end
end
