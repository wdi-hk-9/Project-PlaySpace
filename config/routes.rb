Rails.application.routes.draw do
  root to: 'static_pages#home'
  get '/about', to: 'static_pages#about'

  resources :users, only: [:new, :index, :create]

  resources :sessions, only: [:new, :create, :destroy]
  get    'login',  to: 'sessions#new'
  delete 'logout', to: "sessions#destroy"

  resources :categories, only: [:index, :show, :new, :create] do
    resources :playspaces, only: [:index]
  end

  resources :playspaces, only: [:index, :show, :new, :create]
end

