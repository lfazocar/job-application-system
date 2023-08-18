class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!, :redirect_unless_admin,  only: %i[ new create destroy ]
  skip_before_action :require_no_authentication

  private

  def redirect_unless_admin
    unless current_user.try(:admin?)
      redirect_to positions_path, notice: "You are not authorized to perform this action"
    end
  end

  def sign_up(resource_name, resource)
    true
  end

  def after_sign_up_path_for(resource)
    positions_path
  end

  def after_update_path_for(resource)
    positions_path
  end
end
