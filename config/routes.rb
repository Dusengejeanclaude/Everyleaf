Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'tasks#index'
  resources :tasks
 
end
