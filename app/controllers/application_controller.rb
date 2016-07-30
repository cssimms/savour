class ApplicationController < ActionController::API
  before_action :authenticate_user_token!
  respond_to :json


## Auth

  def authenticate_user_token!
    auth_token = request.headers['Authorization']

    if auth_token
      check_token_login auth_token
    else
      auth_error
    end
  end

  private

  def check_token_login(token)
    auth_error unless token.include?(':')

    user_id = token.split(':')
    user = User.find_by_id(token.first)

    if user && Devise.secure_compare(token, user.access_token)
      sign_in user, store:false
    else
      auth_error
    end
  end

  def auth_error
    # invalid or nonexsistant token in request header
    render :json {error:'unauthorized'}, status: 401
  end
end
