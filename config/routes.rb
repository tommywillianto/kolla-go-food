Rails.application.routes.draw do
  resources :carts
  # get 'store/index'
  root 'store#index', as: 'store_index'

  get 'home/hello'

  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
