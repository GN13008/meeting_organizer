Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # API routes
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # resources :slots, only: [ :index ]
      get 'slots/index'
    end
  end
  root to: 'slots#index'
end
