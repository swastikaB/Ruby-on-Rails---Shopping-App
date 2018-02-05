Rails.application.routes.draw do

  get 'search_product/search'

  get 'access/new'

  get 'access/create'

  get 'admin/index'

  get 'admin', to: 'admin#index'

  get 'login', to: 'access#new'

  post 'access/new', to: 'access#create'

  delete 'logout', to: 'access#destroy'

  post 'shopper/search', to: 'shopper#search'

  get 'shopper/search', to: 'shopper#index'
  
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  resources :products
  root "shopper#index", as: "root"
  #get 'shopper/index'
  get 'shopper' , to: "shopper#index"
  get 'question' , to: "shopper#question"
  get 'news' , to: "shopper#news"
  get 'contact' , to: "shopper#contact"

  get "*path" => "shopper#index"  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
