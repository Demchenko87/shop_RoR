Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'example/show'

  get 'store/index'

  resources :products
  resource :example, only: [:show], controller: :example
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "store#index", as: 'store'
end
