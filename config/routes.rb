Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items, except: [:index] do
    resources :orders
  end
  resources :orders, only: [:destroy]

  resources :kitchens do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]

  resources :stations do
    resources :bookings
  end
end
