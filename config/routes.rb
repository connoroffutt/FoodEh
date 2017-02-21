Rails.application.routes.draw do
  get 'reviews/show'

  get 'reviews/create'

  get 'reviews/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "cuisines#index"

  resources :cuisines, only: [:index, :show]
  resources :users, only: [:new, :create, :show]
  resources :user_sessions, only: [:new, :create, :destroy]
  resources :recipes, only: [:index, :show, :create]
  resources :favorites, only: [:create, :show, :destroy]

  resources :recipes do
    resources :reviews, only: [:show, :create, :destroy]
  end

  resources :lists do
    get
  end


  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'lists/show'
  post '/list/add' => 'lists#add', :as => :list_add
  delete '/list/:ingredient_id' => 'lists#destroy_ingredient', :as => :list_destroy_ingredient
  delete '/list/:list_id' => 'lists#destroy', :as => :list_destroy

end
