Rails.application.routes.draw do
  resources :tweets
  resources :users
  get '/search', to: 'user#search'
  root to: 'users#index'
end
