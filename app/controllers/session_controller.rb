class SessionController < ApplicationController
  skip_before_action :authenticate_user_token!

  def new
    render file: '/Users/charlie/Projects/savour/index.html'
  end

  def create
  end

end
