Rails.application.routes.draw do
  root 'vehicles#index'
  resources :vehicles

  get 'vehicles/:id/orders/new', to: 'orders#new', as: 'new_vehicle_order'
  post 'vehicles/:id/orders/new', to: 'orders#create', as: 'vehicle_orders_path'

  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
