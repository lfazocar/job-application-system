Rails.application.routes.draw do
  # Positions scaffold
  resources :positions do
    member do
      post 'application'
      delete 'application', to: 'positions#delete_application'
    end
  end

  # Devise
  devise_for :users, controllers: { registrations: 'registrations' }

  # Static views
  get '/home', to: "pages#home"

  # Root
  root "pages#home"
end
