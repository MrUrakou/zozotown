Rails.application.routes.draw do
  devise_for :users
  root "admin/products#index"
  resources :users, only:[:edit, :update]
  resources :products, only: [:index]
  resources :carts, only: [:show]

  namespace :admin do
    resources :products, only: [:index, :show, :new, :create]
  end
end
