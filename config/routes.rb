Rails.application.routes.draw do
  get 'lists/index'
  get 'auth/login'
  get '/auth/google_oauth2/callback', to: 'auth#handle_auth'
  root "auth#login"
end
