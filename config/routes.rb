Rails.application.routes.draw do

  devise_for :users
  root "orders#index"

  resources :orders
  resources :drinks
  resources :foods
  
  # link to change foods/drinks status from 0 (processing) to 1 (done)
  get '/orders/:id/update_foods_status',  to: 'orders#update_foods_status',   as: :update_foods_status
  get '/orders/:id/update_drinks_status', to: 'orders#update_drinks_status',  as: :update_drinks_status

  # kitchen foods orders
  get 'kitchen_foods',	to: 'kitchen_foods#index'

  # kitchen drinks orders
  get 'kitchen_drinks',	to: 'kitchen_drinks#index'

  resources :users

  # list of all users
  #get 'users',          to: 'users#index',  as: :all_users

  # single user
  #get 'users/:id',      to: 'users#show',    as: :single_user

  # edit user
  #get 'users/:id/edit', to: 'users#edit',    as: :edit_user  
end