Rails.application.routes.draw do
  resources :items     # creates all CRUD routes for items
  resources :categories # creates all CRUD routes for categories

  root "items#index"   # sets the home page of the app
end
