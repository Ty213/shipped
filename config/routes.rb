Rails.application.routes.draw do

  get 'jobs/create'

  get 'jobs/new'

  get 'jobs/index'

  get 'jobs/show'

  get 'jobs/edit'

  get 'jobs/update'

  get 'jobs/destroy'

  get 'boats/index'

  get 'boats/create'

  get 'boats/new'

  get 'boats/show'

  get 'boats/update'

  get 'boats/destroy'

  devise_for :users

	root "welcome#index"


end
