Rails.application.routes.draw do
  resources :static_pages, only: [:about, :index]
  get '/playspace', to: 'static_pages#home'

  get '/playspace/about', to: 'static_pages#about'

  root "users#index"
  resources :users, only: [:new, :index, :create]

  get 'login', to: 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]

  delete "/logout", to: "sessions#destroy"

end
