Rails.application.routes.draw do
  # resouces :users, only: :show
  get 'dashboard/index'
  get 'user_tasks/controller'
  get 'dashboard', to: 'dashboard#index', as: 'user_dashboard'
  get 'dashboard/:id', to: 'dashboard#show', as: 'dashboard'
  devise_for :users, controllers: { registrations: 'registrations' }

  root to: "landing#index"

  resources :posts, only: %i[index new create] do
    resources :likes, only: %i[new create]
    resources :comments, only: %i[new create] do
      resources :likes, only: %i[new create]
    end
  end

  resources :events do
    member do
      post 'join'
    end
  end

  resources :tasks do
    resources :user_tasks, only: [:index, :update]
  end

  resources :user_tasks, only: :index

  # for chat
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
