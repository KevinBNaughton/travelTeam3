Rails.application.routes.draw do
  get 'requests/new'

  get 'request/new'

  #get 'sessions/new'

  resources :users
  #get 'blogs/new'

  root 'initial_page#home'
  get '/home',  to: 'initial_page#home'
  get '/contact',  to: 'initial_page#contact'
  get '/admin',  to: 'initial_page#admin'
  get '/post',   to: 'initial_page#post'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/admin', to: 'blogs#new'
  post    '/admin', to: 'blogs#create'
  get   '/request',  to: 'requests#new'
  post  '/request',  to: 'requests#create'
  get   '/profile',  to: 'users#edit'
  patch   '/profile', to: 'users#update'
  #get   '/blogs', to: 'blogs#index'

  resources :blogs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
