class Public::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
    end_user_path(current_end_user.screen_name)
  end



  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:screen_name, :email, :name, :gender, :is_deleted, :internet_protocol_address, :birth_day])
  end
end
