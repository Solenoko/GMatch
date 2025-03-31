Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Add routes for users, games, and messages
  resources :users, only: [:show, :index]
  resources :games, only: [:index, :show]
  resources :messages, only: [:create, :index]

  # Set the homepage to show the games index
  root "games#index"
end
