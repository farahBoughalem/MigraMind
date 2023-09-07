Rails.application.routes.draw do
  # resouces :users, only: :show
  get 'user_tasks/controller'
  resources :dashboard, only: %i[index show] do
    member do
      post 'chat'
    end
  end
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
      delete 'unjoin'
    end
  end

  resources :tasks do
    resources :user_tasks, only: [:index, :update]
  end

  resources :user_tasks, only: :index

  # for chat
  resources :chatrooms, only: %i[index show] do
    resources :messages, only: :create
  end
end
