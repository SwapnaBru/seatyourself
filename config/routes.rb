Rails.application.routes.draw do


  get 'restaurants/index'

  get 'restaurants/show'

  get 'restaurants/new'

  get 'restaurants/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resource :user, only: [:new, :create]
  resources :reservations
  resources :restaurants
  resources :sessions, only: [:new, :create, :destroy]


end
