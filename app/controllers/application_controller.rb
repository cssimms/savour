class ApplicationController < ActionController::API
  before_action :authenticate_user_token!
  respond_to :json


  private
  def authenticate_user_token!
  end
end
