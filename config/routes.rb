Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: 'registrations'}

  root "orders#index"
  # root "orders#landing"

  resources :orders do
    resources :payments, only: [:new, :create]
  end

  resources :drinks
  resources :foods
  resources :users

  # link to change foods/drinks status from 0 (processing) to 1 (done)
  get '/orders/:id/update_foods_status',  to: 'orders#update_foods_status',   as: :update_foods_status
  get '/orders/:id/update_drinks_status', to: 'orders#update_drinks_status',  as: :update_drinks_status

  # kitchen foods orders
  get 'kitchen_foods',	to: 'kitchen_foods#index'

  # kitchen drinks orders
  get 'kitchen_drinks',	to: 'kitchen_drinks#index'

  # order success page
  get '/orders/:id/success',  to: 'orders#order_success', as: :order_success
end
