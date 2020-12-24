Rails.application.routes.draw do

  root to: "static#home"

  resources :sessions, only: [:create]
  resources :registrations, only: [:create]

  namespace :api do
    namespace :v1 do
      resources :pets
      resources :items
    end
  end
end