Rails.application.routes.draw do


  root 'trips#index'
  resources :trips
  get 'trips/new'
  post 'trips/dapadapaDUUU'
end
