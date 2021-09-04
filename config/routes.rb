Rails.application.routes.draw do
  devise_for :users
  root to: "snsposts#index"
  resources :snsposts do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
