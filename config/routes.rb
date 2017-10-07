Rails.application.routes.draw do
  resources :suplements

  devise_for :users
  root to: "home#index"
end
