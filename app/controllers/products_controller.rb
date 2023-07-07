class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render :index
  end

  def one_product
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    @product = Product.create(
      name: "Playstation 5",
      price: 500,
      image_url: "https://assets-prd.ignimgs.com/2020/11/16/ps5-disc-1605555492213.png",
      description: "Play video games!",
    )
    render :show
  end
end
