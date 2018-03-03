Rails.application.routes.draw do
  
  resources :boats
  resources :jobs

  devise_for :users

	root "welcome#index"


end
