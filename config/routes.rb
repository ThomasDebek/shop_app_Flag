Rails.application.routes.draw do
  root "checkouts#show"
  resources :orders
  resources :users
  resources :checkouts, only: [:show]

end
