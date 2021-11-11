Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/links'
  devise_for :users
  resources :posts
  resources :users
  root to: "home#index"
end
