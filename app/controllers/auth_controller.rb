class AuthController < ApplicationController
  def login
  end

  def handle_auth
    puts request.env['omniauth.auth'].info.email
    redirect_to '/lists/index'
  end
end
