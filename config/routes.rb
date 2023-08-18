Rails.application.routes.draw do
  # Positions scaffold
  resources :positions

  # Devise
  devise_for :users

  # Static views
  get '/home', to: "pages#home"

  # Root
  root "pages#home"
end
