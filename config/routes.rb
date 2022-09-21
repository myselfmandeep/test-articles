Rails.application.routes.draw do
  resources :comments
  resources :users, except: %i[new]
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index" 

  get '/signup', to: 'users#new'

  
end
