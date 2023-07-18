Rails.application.routes.draw do
  get "/products" => "products#all_products"

  get "/products/:id" => "products#one_product"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  #BREAK#

  get "/suppliers" => "suppliers#all_suppliers"

  post "/suppliers" => "suppliers#create"

  delete "/suppliers/:id" => "suppliers#destroy"

  #BREAK#

  get "/images" => "images#all_images"

  post "/images" => "images#create"

  #BREAK#

  post "/users" => "users#create"

    #BREAK#

  post "/sessions" => "sessions#create"
end
