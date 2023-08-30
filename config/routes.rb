Rails.application.routes.draw do
  devise_for :users

  root to: "posts#index"

  resources :events, only: %i[index new]
  resources :tasks
  resources :tasks, only: :index
  resources :posts, only: :index
end
