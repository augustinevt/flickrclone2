Rails.application.routes.draw do
  get 'images/index'

  get 'images/show'

  get 'images/new'

  get 'images/create'

  root 'images#index'


  devise_for :users, controllers: { registrations: "registrations" }


  resources :user_profiles
  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
