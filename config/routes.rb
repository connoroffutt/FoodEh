Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "cuisines#index"

  resources :cuisines, only: [:index, :show]
  resources :users, only: [:new, :create, :show]
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :recipes, only: [:index, :show, :create]
  resources :list, only: [:show]

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  post '/list/:id/add' => 'lists#add'



end
