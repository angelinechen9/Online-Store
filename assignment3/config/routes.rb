Rails.application.routes.draw do
  get 'login', to: 'access#new'
  post 'login', to: 'access#create'
  delete 'logout', to: 'access#destroy'
  get 'admin/index', to: 'admin#index'
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  get 'shopper/index'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
