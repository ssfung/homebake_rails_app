Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'
  resources :listings
  resources :carts
  get "/payments/session", to: "payments#get_stripe_id"
  get "/payments/success", to: "payments#success"
  post "/payments/webhook", to: "payments#webhook"
end
 