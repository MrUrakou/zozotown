Rails.application.routes.draw do
  devise_for :users
  root "users/products#index"
  resources :users, only:[:edit, :update]

  namespace :users do
    resources :carts, only: [:index, :create] do
      post 'purchase', on: :collection
    end
    resources :products, only: [:index, :show]
  end

  namespace :admin do
    resources :products, only: [:new, :create]
  end
end
