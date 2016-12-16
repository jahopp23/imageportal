class ImagesController < ApplicationController
  def index
   @images =  Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end

  def edit
  end

private
  def image_params
    params.require(:image).permit(:title, :description, :user, :avatar)
  end
end
