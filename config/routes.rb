Rails.application.routes.draw do
  devise_for :users

  root to: "posts#index"

  resources :events
  resources :tasks, only: :index
  resources :posts, only: %i[new create index]
end
