Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/enter', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sessions/new'
  
  root 'pages#index'
  get 'pages/help'
    
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
    # GET | users | users#index |
    # GET | users/new | users#new |
    # POST | users | users#create |
    # GET | users/:id | users#show |
    # GET | users/:id/edit | users#edit |
    # PATCH | users/:id | users#update |
    # DELETE | users/:id | users#delete |
  resources :topics do
    resources :comments
  end
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  post '/unfavorites', to: 'favorites#destroy'
  
end
