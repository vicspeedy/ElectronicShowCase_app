Rails.application.routes.draw do
  resources :products

  # Start: *TODO: 
  # Devise
  devise_for :users,  controllers: { registrations: 'registrations' },
                      path: '',
                      path_names: { sign_in: 'login',
                                    sign_out: 'logout',
                                    sign_up: 'registrate' }
   
  
  
  #  get 'pages/home'
  #  get 'pages/terms'
  #  get 'pages/privacy'
  # Static Views
  get '/home',    to: 'pages#home'
  get '/terms',   to: 'pages#terms'
  get '/privacy', to: 'pages#privacy'
  # Static Views 
  resources :contacts, only: %i[new create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
  # End: *TODO:
end
