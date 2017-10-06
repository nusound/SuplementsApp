Rails.application.routes.draw do
  resources :suplements

  get 'suplements' => 'suplements#index'
  get 'suplements/new' => 'suplements#new'
  post 'suplements' => 'suplements#create'
  get 'suplements/:id' => 'suplements#show'
  get 'suplements/:id/edit' => 'suplements#edit'

  devise_for :users
  root to: "home#index"
end
