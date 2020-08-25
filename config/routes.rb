Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :kitchens do
  #   resources :stations, only: [:create, :new, :edit, :update]
  #   resources :bookings, only: [:create, :new, :edit, :update]
  # end
  # resources :stations, only: [:show, :index, :destroy]
  # resources :bookings, only: [:show, :index, :destroy]
end
end
