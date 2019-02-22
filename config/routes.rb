Rails.application.routes.draw do
  root 'initial_page#home'
  get '/home',  to: 'initial_page#home'
  get '/contact',  to: 'initial_page#contact'
  get '/admin',  to: 'initial_page#admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
