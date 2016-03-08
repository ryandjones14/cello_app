Rails.application.routes.draw do

  resources :todos
  resources :lists


  root "lists#index"

  get '/todos/new/:list_id'

end
