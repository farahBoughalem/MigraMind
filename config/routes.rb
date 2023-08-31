Rails.application.routes.draw do
  # resouces :users, only: :show
  get 'dashboard/index'
  get 'user_tasks/controller'
  get 'dashboard', to: 'dashboard#index', as: 'user_dashboard'
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: "posts#index"

  resources :posts, only: %i[index new create] do
    resources :likes, only: %i[new create]
    resources :comments, only: %i[new create] do
      resources :likes, only: %i[new create]
    end
  end

  resources :events, only: %i[index show new create]

  resources :tasks do
    resources :user_tasks, only: [:index, :update]
  end

  resources :user_tasks, only: :index
  #Is this really necessary?
end
