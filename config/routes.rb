Rails.application.routes.draw do
  
  devise_for :users
# Define root URI
  root 'pages#index'

  resources :posts
  	
# Define routes for pages
  get '/index' => 'pages#index'
  get '/home'	=> 'pages#home'
  get '/user/:id'	=> 'pages#profile'
  get '/explore'	=> 'pages#explore'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
