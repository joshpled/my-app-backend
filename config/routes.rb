Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :pets
      resources :items
    end
  end
end