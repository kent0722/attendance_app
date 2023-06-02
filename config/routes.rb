Rails.application.routes.draw do

  get 'users/show'

  root 'static_pages#top'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#dastroy'

  resources :users
end
