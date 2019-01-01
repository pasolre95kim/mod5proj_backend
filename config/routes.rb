Rails.application.routes.draw do
  resources :animals
  resources :adoptions
  resources :articles
  resources :users, only: [:create, :index]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end
