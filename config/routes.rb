Rails.application.routes.draw do
  get "/products" => "products#all_products"

  get "/product/:id" => "products#one_product"
end
