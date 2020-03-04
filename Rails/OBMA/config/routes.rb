Rails.application.routes.draw do


  
 resources :reviews
  
  resources :books
  
  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  patch 'users/:id/is_delete', to:'users#is_delete', as: 'user_is_delete'

  resources :users do
  	resources :reviews
  end
end
