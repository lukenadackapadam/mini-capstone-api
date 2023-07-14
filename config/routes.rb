Rails.application.routes.draw do
  get "/products" => "products#all_products"

  get "/products/:id" => "products#one_product"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#all_suppliers"

  get "/suppliers" => "suppliers#create"

  delete "/suppliers/:id" => "suppliers#destroy"
end
