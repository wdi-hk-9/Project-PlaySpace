Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/about'

  root "users#index"
  resources :users, only: [:new, :index, :create]

  get 'login', to: 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]

  delete "/logout", to: "sessions#destroy"

end
