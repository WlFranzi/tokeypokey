Rails.application.routes.draw do

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  resources :sessions
  get "sign_up" => "users#new", :as => "sign_up"
  resources :users	
  
  root :to => "users#new"
  resources :trips
  post 'trips/new'
  resources :stops
  post 'stop/new'
end
