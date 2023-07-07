Rails.application.routes.draw do
  get "/products" => "products#all_products"

  get "/product/:id" => "products#one_product"

  post "/products" => "products#create"

  # delete "/product/:id" => "products#destory"
end
