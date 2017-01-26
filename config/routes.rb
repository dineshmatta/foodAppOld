Rails.application.routes.draw do
	resources :items
	devise_for :users
	resources :visitors, only: [:index]

	devise_scope :user do
	  authenticated :user do
	    root :to => 'items#index'
	  end
	  unauthenticated :user do
	    #root :to => 'devise/sessions#new', as: :unauthenticated_root
	    root :to => 'visitors#index', as: :unauthenticated_root
	  end
	end

	resources :users, except: :create

	post 'create_user' => 'users#create', as: :create_user
end
