Rails.application.routes.draw do
  resources :line_items
  devise_for :users
  root to: 'pages#home'

  resources :items, except: %i[index new create show]
  resources :carts do
    resources :orders
  end
  resources :orders, only: %i[destroy show]

  resources :kitchens do
    resources :reviews, only: %i[new create]
    resources :items, only: %i[new create show]
  end
  resources :reviews, only: %i[destroy]

  resources :stations do
    resources :bookings, only: %i[new index create show]
  end
  resources :bookings, only: %i[destroy]
end
