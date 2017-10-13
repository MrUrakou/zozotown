Rails.application.routes.draw do
  devise_for :users
  root "users/products#index"
  resources :users, only:[:edit, :update]

  namespace :users do
    resources :products, only: [:index, :show]
    resources :carts, only: [:index, :create]
  end

  namespace :admin do
    resources :products, only: [:index, :new, :create]
  end
end
