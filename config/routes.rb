Rails.application.routes.draw do
  # get '/restaurants/:id', to: 'restaurants#create_sandwich'
  post '/restaurants/create_sandwich', to: 'restaurants#create_sandwich'
  get '/welcome', to: 'users#new'
  post '/login', to: 'users#create'
  resources :stocks
  resources :restaurants
  resources :sandwich_ingredients
  resources :ingredients
  resources :sandwiches
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
