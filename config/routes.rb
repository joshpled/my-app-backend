Rails.application.routes.draw do

  root to: "static#home"

  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  namespace :api do
    namespace :v1 do
      resources :pets
      resources :items
      resources :users
    end
  end
end