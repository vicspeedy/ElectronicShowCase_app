Rails.application.routes.draw do
  resources :contacts
  root "pages#home"

  #  get 'pages/home'
  #  get 'pages/terms'
  #  get 'pages/privacy'
  get '/home',    to: 'pages#home'
  get '/terms',   to: 'pages#terms'
  get '/privacy', to: 'pages#privacy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
