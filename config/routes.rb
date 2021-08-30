Rails.application.routes.draw do
  root to: "snsposts#index"
  resources :snsposts, only: [:index, :new]
end
