Rails.application.routes.draw do

  
  namespace :vendor do
    resources :orders
    resources :order_items
  end



  devise_for :users
  devise_for :admins
  devise_for :vendors
  get 'contact/index'

  

  root 'home#index'
  resources :products
  resources :categories
  resources :subcategories
  resources :orders
  resources :order_items
  resources :order_statuses

  
  get 'cart/index' 
  get 'cart/delivery'
  get 'cart/login'
  get 'cart/payment'
  get 'cart/shipping'

  resources :users

end
