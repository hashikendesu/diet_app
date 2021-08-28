Rails.application.routes.draw do
  get 'sns_posts/index'
  root to: "sns_posts#index"
end
