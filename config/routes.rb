Rails.application.routes.draw do
  get 'lists/index'
  get 'auth/login'
  get '/auth/google_oauth2/callback', to: 'auth#handle_auth'

  post '/add_item', to: 'lists#add_item'
  get '/delete_item', to: 'lists#delete_item'
  get '/delete_list', to: 'lists#delete_list'
  root 'auth#login'
end
