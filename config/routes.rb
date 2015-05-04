Rails.application.routes.draw do


  root 'trips#index'
  resources :trips
  post 'trips/new'
  resources :stops
  post 'stop/new'
  resources :users

end
