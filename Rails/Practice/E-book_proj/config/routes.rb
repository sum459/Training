Rails.application.routes.draw do
    
	

  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

namespace 'api' do
	namespace 'v1' do
		resources :users

	end
end

resources :users
root 'users#index'

end
