Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :users, only: %i[ create ]
  get "login", to: "users#login", as: :login
  get "admin-prescott", to: "users#admin_prescott", as: :admin

  # root "posts#index"
  
end
