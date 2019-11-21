Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'sessions#new'
  resources :tasks
  namespace :admin do 
    resources :users
  end
end
