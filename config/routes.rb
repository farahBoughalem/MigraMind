Rails.application.routes.draw do
  get 'tasks/index'
  devise_for :users
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "posts#index"

  resources :events
  resources :tasks, only: :index
  # Defines the root path route ("/")
  # root "articles#index"
end
