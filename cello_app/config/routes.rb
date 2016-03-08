Rails.application.routes.draw do

  resources :todos
  resources :lists


  root "lists#index"

end
