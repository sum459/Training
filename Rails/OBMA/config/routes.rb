Rails.application.routes.draw do


  resources :users
  resources :books
  get 'books/index'
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/:id/is_delete' => 'users#is_delete'
  get 'users/:id/is_delete', to:'users#is_delete', as: 'user_is_delete'
end
