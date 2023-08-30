Rails.application.routes.draw do
  devise_for :users

  root to: "posts#index"

  resources :events
  resources :tasks, only: :index


end
