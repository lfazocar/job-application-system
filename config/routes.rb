Rails.application.routes.draw do
  # Positions scaffold
  resources :positions do
    member do
      post 'application'
      delete 'application', to: 'positions#delete_application'
    end
  end
  resources :users, only: [ :index, :show ]

  # Devise
  devise_for :users, controllers: { registrations: 'registrations' }, path: ''

  # Static views
  get '/home', to: "pages#home"

  # Root
  root "pages#home"
end
