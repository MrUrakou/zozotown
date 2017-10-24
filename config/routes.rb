Rails.application.routes.draw do
  devise_for :users
  root "users/products#index"
  resources :users, only:[:edit, :update]

  namespace :users do
    resources :carts, only: [:index, :create, :destroy] do
      post 'purchase', on: :collection
    end
    resources :products, only: [:index, :show] do
      resources :reviews, only: [:new, :create]
    end
  end

  namespace :admin do
    resources :products, only: [:new, :create]
  end
end
