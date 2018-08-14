Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Use for user
  resources :line_items
  resources :carts
  resources :categories, only: [:index, :show]
  #Use for admin
  resources :users
  resources :products
  resources :posts
  namespace :manager do
    resources :categories
  end

  get 'manager' => 'manager#index'

  controller :sessions do
    get 'login' => :index
    post 'login' => :create
    delete 'logout' => :destroy
  end

  root "home#index"

end
