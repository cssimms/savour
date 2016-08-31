class SessionController < ApplicationController
  skip_before_action :authenticate_user_token!

  def new
    render json: { splash: true}, status: 200
  end

  def create
  end

end
