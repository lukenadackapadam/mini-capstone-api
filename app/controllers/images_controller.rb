class ImagesController < ApplicationController
  def all_images
    @images = Image.all
    render :index
  end

  def create
    @image = Image.create(
      url: params["url"],
    )
    if @image.save
      render :show
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
