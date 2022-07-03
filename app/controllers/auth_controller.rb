class AuthController < ApplicationController
  def login
    redirect_to '/lists/index' unless session[:email].nil?
  end

  def handle_auth
    session[:email] = request.env['omniauth.auth'].info.email
    redirect_to '/lists/index'
  end
end
