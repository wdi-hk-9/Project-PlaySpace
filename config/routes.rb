Rails.application.routes.draw do
  root to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  resources :static_pages, only: [:about, :index]

  resources :users, only: [:new, :index, :create]

  resources :users, only: [:new, :index, :create]

  resources :sessions, only: [:new, :create, :destroy]
  get    'login',  to: 'sessions#new'
  delete 'logout', to: "sessions#destroy"

  resources :categories, only: [:index, :show, :new, :create] do
    resources :playspaces, only: [:index]
  end

  resources :playspaces, only: [:index, :show, :new, :create]

  resources :playspaces, only:[:show] do
    resources :reviews, except: [:show, :destroy]
  end
end

