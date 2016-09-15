class UserTagsController < ApplicationController

  def create
    @user = UserProfile.find_by(username: params[:username]).user
    @tag = UserTag.new(user_id: @user.id,  image_id: params[:user_tag][:image_id])
    @tag.owner = current_user
    if @tag.save
      flash[:notice] = 'tag was saved'
    else
      flash[:alert] = 'tag was not saved'
    end

    redirect_to image_path(user_tag_params[:image_id])
  end

  private

  def user_tag_params
    params.require(:user_tag).permit(:image_id)
  end
end
