<<<<<<< HEAD
Rails.application.routes.draw do
  root 'initial_page#AP'
  get '/home',  to: 'initial_page#home'
  get '/contact',  to: 'initial_page#contact'
  get '/admin',  to: 'initial_page#admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=======
Rails.application.routes.draw do
  root 'initial_page#home'
  get '/home',  to: 'initial_page#home'
  get '/contact',  to: 'initial_page#contact'
  get '/admin',  to: 'initial_page#admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
>>>>>>> 9451ea6b58602d8f26e2f0b97aa6ee92ef138937
