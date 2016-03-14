Rails.application.routes.draw do

  get 'qr_codes/new'

  get 'qr_codes/create'

  devise_for :users, controllers: {registrations: 'registrations'}
  
  root "orders#landing"

  resources :orders do
    resources :payments, only: [:new, :create]
    collection do
      get 'closed', action: :closed
    end
  end

  resources :drinks
  resources :foods
  resources :users
<<<<<<< HEAD
  resources :qr_codes, only: [:new, :create]
  
=======

>>>>>>> 9d6bd3fc3d55c23c2bc226d9f277e8d6cb5f1a14
  # link to change foods/drinks status from 0 (processing) to 1 (done)
  get '/orders/:id/update_foods_status',  to: 'orders#update_foods_status',   as: :update_foods_status
  get '/orders/:id/update_drinks_status', to: 'orders#update_drinks_status',  as: :update_drinks_status

  # kitchen foods orders
  get 'kitchen_foods',	to: 'kitchen_foods#index'

  # kitchen drinks orders
  get 'kitchen_drinks',	to: 'kitchen_drinks#index'

  # order success page
  get '/orders/:id/success',  to: 'orders#order_success', as: :order_success
<<<<<<< HEAD
  
end
=======
end
>>>>>>> 9d6bd3fc3d55c23c2bc226d9f277e8d6cb5f1a14
