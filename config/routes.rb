Rails.application.routes.draw do
  get 'categories/create'

  get 'categories/new'

  get 'categories/show'

  get 'images/index'

  get 'images/show'

  get 'images/new'

  get 'images/create'

  root 'images#index'

  resources :categories
  resources :user_tags

  devise_for :users, controllers: { registrations: "registrations" }


  resources :user_profiles do
    collection do
      get 'autocomplete'
    end
  end

  resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
