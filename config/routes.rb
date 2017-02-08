Rails.application.routes.draw do
  get "/", to: 'products#home'
  get "/products", to: 'products#index'
  get "/products/new", to: 'products#new'
  post "/products/search", to: 'products#search'
  get "/products/:id", to: 'products#show'
  post "/products", to: 'products#create'
  get "/products/:id/edit", to: 'products#edit'
  patch "/products/:id",to: 'products#update'
  delete "//products/:id", to: 'products#destroy'


  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/orders", to: 'orders#create'
  get "/orders/:id", to: 'orders#show'

  post "/carted_products" to:'carted_products#create'
end