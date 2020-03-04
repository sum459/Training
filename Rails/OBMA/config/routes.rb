Rails.application.routes.draw do


  get 'reviews/index'
  get 'reviews/new'
  get 'reviews/show'
  get 'reviews/edit'
  get 'reviews/create'
  get 'reviews/update'
  get 'reviews/destroy'
  resources :users
  resources :books
  get 'books/index'
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  get 'users/:id/is_delete', to:'users#is_delete', as: 'user_is_delete'
end
