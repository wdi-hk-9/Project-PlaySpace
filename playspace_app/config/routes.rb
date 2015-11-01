Rails.application.routes.draw do
  resources :static_pages, only: [:about, :index]
  get '/', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'

  root "users#index"
  resources :users, only: [:new, :index, :create]

  get 'login', to: 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]
  delete "/logout", to: "sessions#destroy"

  resources :categories, only: [:index, :show, :new, :create] do
    resources :playspaces, only: [:index, :show, :new, :create]
  end
end
