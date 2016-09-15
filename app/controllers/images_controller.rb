class ImagesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @images = Image.last(20)
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.user = current_user
    if @image.save
      flash[:notice] = "Successfuly created image"
      redirect_to images_path
    else
      flash[:alert] = "Could not create image"
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(:title, :attachment)
  end
end
