Rails.application.routes.draw do
  
  resources :boats
  resources :jobs

  post '/assign/boat' => "boats#assign"

  devise_for :users
  resources :users, :only => [:show]

	root "welcome#index"


end
