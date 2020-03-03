Rails.application.routes.draw do


  resources :users
  resources :books
  get 'books/index'
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  patch '/is_delete' => 'users#is_delete'
end
