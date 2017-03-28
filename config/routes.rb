Rails.application.routes.draw do
  root 'homes#index'

  # Devise routes
  devise_for :users

  
end
