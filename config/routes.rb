Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/links'
  devise_for :users
  resources :posts do
    resources :likes
    resources :comments
  end
  resources :users
  root to: "home#index"
  get 'home/tag_page'
  get 'home/show'
  get "tags/:tag", to: "home#index", as: :tag
end
