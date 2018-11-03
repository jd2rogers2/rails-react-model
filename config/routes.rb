Rails.application.routes.draw do

  root 'application#home'

  resources :ordered_products
  resources :products
  resources :carts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # namespace :api do 
  #   namespace :v1 do
  #     #     #     #     #   end
  # end
end
