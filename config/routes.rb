Rails.application.routes.draw do
  get "/", to: 'products#home'
  
  resources :products do
  end

  post "/products/search", to: 'products#search'

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  resources :carted_products do
  end

  resources :orders do
  end
end