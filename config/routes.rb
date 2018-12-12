Rails.application.routes.draw do
  resources :animals, :adoptions, :users
end
