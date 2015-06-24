Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  get '/markets' => 'markets#index'

  # Jeri's routes
  root "users#index"
  get "/market_dashboard" => "users#market"
  get "/vendor_dashboard" => "users#vendor"

  resources :markets, only: [:show, :index]
end
