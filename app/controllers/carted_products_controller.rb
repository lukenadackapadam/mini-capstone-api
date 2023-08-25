class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      status: "carted",
      order_id: nil,
    )
    if @carted_product.save
      render :show
    else
      render json: { errors: @carted_product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @carted_products = CartedProduct.find_by(id: params["id"])
    render :index
  end
end

# 5) Make a carted_products index action.

# Assume it's showing all carted_products. Test it in your HTTP client.

# Change it to only show the current user's carted products with a status of "carted". Test it in your HTTP client.
