class ApplicationController < ActionController::Base
  before_action :authenticate_userinfo!

  protect_from_forgery with: :exception
end
