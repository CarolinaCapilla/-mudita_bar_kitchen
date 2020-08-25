Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :kitchens do
  #   resources :stations, only: [:create, :new, :edit, :update]
  #   resources :bookings, only: [:create, :new, :edit, :update]
  # end
  # resources :stations, only: [:show, :index, :destroy]
  # resources :bookings, only: [:show, :index, :destroy]
end
=======

  resources :items, except: [:index] do
    resources :orders
  end
  resources :orders, only: [:destroy]

  resources :kitchen do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]

  resources :stations do
    resources :bookings
  end
>>>>>>> a0a583e8868492949f07c887a7615574345c5c30
end
