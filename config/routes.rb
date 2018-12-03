Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :products

      root to: "users#index"
    end
   
   get 'thankyou', to: 'products#index'
  root to: 'visitors#index'
   resources :products
  devise_for :users
  resources :users
end
