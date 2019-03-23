Rails.application.routes.draw do
  get 'blogs/new'

  get 'blog/new'

  root 'initial_page#home'
  get '/home',  to: 'initial_page#home'
  get '/contact',  to: 'initial_page#contact'
  get '/admin',  to: 'initial_page#admin'
  get '/post',   to: 'initial_page#post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
