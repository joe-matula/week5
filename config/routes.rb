Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  resources :cart
  get 'store/index'

  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/links'
  
  resources :store
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'store#index'
end
