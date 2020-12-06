Rails.application.routes.draw do


  resources :items
  namespace :api do
    namespace :v1 do
      resources :monsters 
    end
  end

end