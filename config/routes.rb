Rails.application.routes.draw do
  get 'helpful/index'
  
  get 'locations/posts'
  get 'locations/index'
  resources :locations
  
  devise_for :users
  root to: "home#index"
  
  resources :users, :only => [:posts]
  resources :locations, :only => [:new]
end
