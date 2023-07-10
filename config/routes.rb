Rails.application.routes.draw do
  get "/products" => "products#all_products"

  get "/products/:id" => "products#one_product"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  # delete "/product/:id" => "products#destory"
end
