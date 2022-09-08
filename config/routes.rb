Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
  resources :vendors, only: [:index, :show]
  resources :sweets, only: [:index, :show]
  resources :vendor_sweets, only: [:create, :destroy]

  # get '/vendors', to: 'vendors#index'
  # get '/vendors/:id', to: 'vendors#show'
  # get '/sweets', to: 'sweets#index'
  # get '/sweets/:id', to: 'sweets#show'
  # post '/vendor_sweets', to: 'vendor_sweets#create'
  # delete '/vendor_sweets/:id', to: 'vendor_sweets#destroy'


end
