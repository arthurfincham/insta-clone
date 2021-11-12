Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/links'
  devise_for :users
  resources :posts do
    resources :likes
  end
  resources :users
  root to: "home#index"
end
