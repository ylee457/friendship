Rails.application.routes.draw do
  root 'homes#index'

  resources :users

  # Devise routes
  devise_for :users

  
end
