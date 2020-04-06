Rails.application.routes.draw do

  devise_for :users
  root 'posts#index'
  resources :posts
  mount Commontator::Engine => '/commontator'
  resources :conversations do
    resources :messages
  end
  # root 'conversations#index'
end
