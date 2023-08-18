class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!, :redirect_unless_admin,  only: [:new, :create]
  skip_before_action :require_no_authentication

  private

  def redirect_unless_admin
    unless current_user.try(:admin?)
      redirect_to root_path, notice: "You are not authorized to perform this action"
    end
  end

  def sign_up(resource_name, resource)
    true
  end

  def after_sign_up_path_for(resource)
    new_user_registration_path
  end
end
