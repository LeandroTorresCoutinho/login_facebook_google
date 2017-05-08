Rails.application.routes.draw do
  	resources :users
	match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
	match 'auth/failure', to: redirect('/'), via: [:get, :post]
	match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
	
	resources :sessions, only: [:create, :destroy]
	resource :home, only: [:show]

	root to: "home#show"
end
