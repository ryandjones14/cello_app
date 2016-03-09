Rails.application.routes.draw do

  get 'lists/new_todo' => 'todos#new'

  resources :todos
  resources :lists


  root "lists#index"

end
