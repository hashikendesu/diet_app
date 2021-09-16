Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "snsposts#index"
  resources :snsposts do
    resources :comments, only: :create
  end
  resources :users, only: [:show, :edit, :update]
  resources :comments, only: :destroy
  resources :weights, only: [:new, :create]
end
