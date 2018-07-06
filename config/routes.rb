Rails.application.routes.draw do
  devise_for :users

  root 'home#index'
  resources :users, only: [:show]
  resources :dives
  resources :dynamic_attributes, only: [:show]

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
