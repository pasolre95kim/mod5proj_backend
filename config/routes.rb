Rails.application.routes.draw do
  resources :animals
  resources :adoptions
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end
