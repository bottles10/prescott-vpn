Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :users, only: %i[ create ]
  get "login", to: "users#login", as: :login

  # root "posts#index"
  
end
