Rails.application.routes.draw do

  root 'static_pages#top'
  
  get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#create'
  get '/login', to: 'sessions#dastroy'

  resources :users
end
