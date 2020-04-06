Rails.application.routes.draw do
  
  resources :chats
  get 'user/show'
  get 'user/edit'
  devise_for :users
  get 'welcome/index'
  
  resources :docs
  resources :users, only: [:show, :edit, :update]
  authenticated :user do
  	root "docs#index", as: "authenticated_root"
  end

  root 'welcome#index'

end
  

  
