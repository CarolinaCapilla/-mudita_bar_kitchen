Rails.application.routes.draw do
  resources :line_items
  devise_for :users
  root to: 'pages#home'


  resources :items, except: [:index, :new, :create, :show]
  resources :carts do
    resources :orders
  end
  resources :orders, only: [:destroy]

  resources :kitchens do
    resources :reviews, only: [:new, :create]
    resources :items, only: [:new, :create, :show]
  end
  resources :reviews, only: [:destroy]

  resources :stations do
    resources :bookings, only: [:new, :index, :create, :show]
  end
  resources :bookings, only: [:destroy]
end
