Rails.application.routes.draw do


  resources :users, only: [:new, :index, :create]

  resources :static_pages, only: [:about, :index]
  root to: 'static_pages#home'
  get '/about', to: 'static_pages#about'

  resources :sessions, only: [:new, :create, :destroy]
  get    'login',  to: 'sessions#new'
  delete 'logout', to: "sessions#destroy"

  resources :categories, only: [:index, :show, :new, :create] do
    resources :playspaces, only: [:index]
  end
<<<<<<< 4e6411d41194de1bd62662cb8affa806b04b1848
  resources :playspaces, only: [:index, :show, :new, :create]
end
=======
end
>>>>>>> fixed homepage side navbar
