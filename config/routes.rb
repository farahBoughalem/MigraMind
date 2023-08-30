Rails.application.routes.draw do
  get 'user_tasks/controller'
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: "posts#index"

  resources :events
  resources :tasks do
    resources :user_tasks, only: [:index, :update]
  end

  resources :user_tasks, only: :index

  resources :posts, only: :index


end
