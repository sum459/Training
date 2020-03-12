Rails.application.routes.draw do

 resources :reviews
 resources :books
  
 root 'users#index'
 get 'users/:id/is_delete', to:'users#is_delete', as: 'user_is_delete'

 resources :users do
 	resources :reviews
 end

namespace 'api' do
	namespace 'v1' do
		resources :users
	end
end

end
