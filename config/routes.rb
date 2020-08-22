Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :items except: [:index] do
    resources :orders
  end
  resources :orders only: [:destroy]

  resources :kitchen do
    resources :reviews only: [:new, :create]
  end
  resources :reviews only: [:destroy]

  # bookings nested on stations :O


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
