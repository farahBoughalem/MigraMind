Rails.application.routes.draw do
  devise_for :users

  root to: "posts#index"

  resources :events
  resources :tasks
  resources :tasks, only: :index
<<<<<<< HEAD
  resources :posts, only: %i[new create]
=======
  resources :posts, only: :index


>>>>>>> master
end
