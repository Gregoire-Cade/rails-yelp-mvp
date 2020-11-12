Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :show, :new, :create]
end

# A visitor can see the list of all restaurants.
# get "restaurants/", to: "restaurants#index" --> LIST ALL

# A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
