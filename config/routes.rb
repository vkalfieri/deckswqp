Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  resources :listings
  resources :subcategories
  resources :deliveries
  resources :categories
  resources :profiles
  resources :trades

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
end