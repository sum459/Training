Rails.application.routes.draw do

  get "login", to:"sessions#new", as: "user_login"
  post "login", to:"sessions#create"
  get "logout", to: "sessions#log_out", as: "user_logout"


 resources :reviews
 resources :books
  
 root 'books#index'
 get 'users/:id/is_delete', to:'users#is_delete', as: 'user_is_delete'

 resources :users do
 	resources :reviews
 end

namespace 'api' do
	namespace 'v1' do
		resources :users
		resources :books
		resources :reviews
		post "user/login", to: 'sessions#login'
	end
end

end
