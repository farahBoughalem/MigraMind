Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: "posts#index"
  resources :posts, only: :index do
    resources :comments, only: %i[new create]
  end
  resources :events, only: %i[index new]
  resources :tasks, only: :index
  
  resources :events
  resources :tasks
end
