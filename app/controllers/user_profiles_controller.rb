class UserProfilesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @user_profile = UserProfile.new
  end

  def create
    @user_profile = UserProfile.new(profile_params)
    @user_profile.user = current_user
    if @user_profile.save
      flash[:notice] = "Profile added."
      redirect_to @user_profile
    end
  end

  def edit

  end

  def show
    @profile = current_user.user_profile
  end

  def autocomplete

    @name = UserProfile.order(:username).where("username ILIKE ?", "%#{ params[:term] }%")
    respond_to do | format |
      format.html
      format.json {
        render json: @name.map(&:username).to_json
      }

    end
  end

  private

  def profile_params
    params.require(:user_profile).permit(:username, :avatar)
  end
end
