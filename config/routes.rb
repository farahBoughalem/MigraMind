Rails.application.routes.draw do
  get 'user_tasks/controller'
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: "posts#index"
  resources :posts, only: :index do
    resources :likes, only: %i[new create]
    resources :comments, only: %i[new create] do
      resources :likes, only: %i[new create]
    end
  end
  resources :events, only: %i[index new]
  resources :events

  resources :tasks do
    resources :user_tasks, only: [:index, :update]
  end

  resources :user_tasks, only: :index

end
