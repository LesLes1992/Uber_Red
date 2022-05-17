Rails.application.routes.draw do
  
  root 'vehicles#index'
  resources :vehicles
  resources :orders

  resources :vehicles do
    resources :orders
  end

  post 'users/role', to: 'roles#role', as: 'user_role'

  devise_for :users#, controllers: { registrations: "users/registrations" }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
