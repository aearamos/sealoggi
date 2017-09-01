Rails.application.routes.draw do
  get 'equipments/new'

  get 'equipments/create'

  get 'equipments/update'

  get 'equipments/destroy'

  get 'equipments/index'

  get 'equipments/show'

  get 'cruises/new'

  get 'cruises/create'

  get 'cruises/update'

  get 'cruises/destroy'

  get 'cruises/index'

  get 'cruises/show'

  get 'data/new'

  get 'data/create'

  get 'data/update'

  get 'data/destroy'

  get 'data/index'

  get 'data/show'

  get 'projects/new'

  get 'projects/create'

  get 'projects/update'

  get 'projects/destroy'

  get 'projects/index'

  get 'projects/show'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
