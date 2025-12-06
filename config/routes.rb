Rails.application.routes.draw do
  # Admin routes
  namespace :admin do
    resources :users, only: [:index, :edit, :update]
  end

  # Devise authentication routes
  devise_for :users

  # Application resources
  resources :items       # CRUD routes for items
  resources :categories  # CRUD routes for categories

  # Root path
  root "items#index"
end
