Rails.application.routes.draw do
  devise_for :users
  root to: "snsposts#index"
  resources :snsposts
  resources :users, only: :show
end
