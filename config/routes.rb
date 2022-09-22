Rails.application.routes.draw do
  resources :comments
  resources :users, except: %i[new]
  resources :articles

  get '/home', to: 'pages#home'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  # root "articles#index" 

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
