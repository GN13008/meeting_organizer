Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # API routes
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :slots, only: [ :index ]
    end
  end
end
