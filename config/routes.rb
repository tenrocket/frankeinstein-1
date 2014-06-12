Rails.application.routes.draw do

  # get "login" => "sessions#new"
  get "logout" => "sessions#destroy"
  get "/auth/facebook/callback" => "sessions#create"

  resources :searches
  resources :challenges
  resources :interests, only: [:index, :new, :create]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'home#index'

end
