class ApplicationController < ActionController::Base
  before_action :authenticate_userinfo!

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:user_id, :firstname, :lastinitial])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:user_id, :firstname, :lastinitial])
  end
end
