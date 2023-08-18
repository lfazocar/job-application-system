class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def authorize_request(kind = nil)
    unless kind.include?(current_user.role)
      redirect_to root_path, notice: "You are not authorized to perform this action"
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:bio, :password, :password_confirmation, :current_password)
    end
  end
end
