Rails.application.routes.draw do
  # Routes for registration
  get 'register', to: 'registrations#new'
  post 'register', to: 'registrations#create'

  # Routes for login
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  # Route for logout
  delete 'logout', to: 'sessions#destroy'

  # Resourceful routes for users
  resources :users, only: [:new, :create]
end
