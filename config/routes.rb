Rails.application.routes.draw do
  root 'homes#index'

  resources :users
  get 'profile', to: 'users#show'

  
  # Devise routes
  # specify path param to avoid conflict with users path
  devise_for :users, controllers: { registrations: "registrations"}, path: 'accounts'

  


  
end
