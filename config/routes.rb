Rails.application.routes.draw do
  # Positions scaffold
  resources :positions

  # Devise
  devise_for :users, controllers: { registrations: 'registrations' }

  # Static views
  get '/home', to: "pages#home"

  # Root
  root "pages#home"
end
