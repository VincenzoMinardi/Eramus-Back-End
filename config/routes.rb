Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/create'
  get 'password_resets/edit'
  get 'password_resets/update'
  # Routes for registration
  get 'register', to: 'registrations#new'
  post 'register', to: 'registrations#create'

  # Routes for login
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'



  # Route for logout
  delete 'logout', to: 'sessions#destroy'

  # Resourceful routes for users
  resources :users, only: [ :index, :new, :create]

end
