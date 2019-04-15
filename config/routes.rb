Rails.application.routes.draw do
  resources :stocks
  resources :restaurants
  resources :sandwich_ingredients
  resources :ingredients
  resources :sandwiches
  resources :users

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
