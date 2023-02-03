Rails.application.routes.draw do
  get 'admin/index'

  namespace :web do
    get 'photos/index'
    get 'photos/show'
    get 'events/calandar'
    get 'events/show'
  end

  get 'home/index'
  resources :photos
  resources :albums
  resources :events
  resources :pages

  devise_scope :user do
    # Redirects signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  
  devise_for :users
  resources :sections
  resources :sponsors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"
end
