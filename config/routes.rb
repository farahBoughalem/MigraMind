Rails.application.routes.draw do
  get 'user_tasks/controller'
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: "posts#index"
  resources :posts, only: %i[index new create] do
    resources :comments, only: %i[new create]
  end
  resources :events, only: %i[index new create]

  resources :tasks do
    resources :user_tasks, only: [:index, :update]
  end

  resources :user_tasks, only: :index
  #Is this really necessary?
end
