Rails.application.routes.draw do
  devise_for :users

  root to: "posts#index"
  resources :posts, only: :index do
    resources :comments, only: %i[new create]
  end
  resources :events
  resources :tasks, only: :index
end
