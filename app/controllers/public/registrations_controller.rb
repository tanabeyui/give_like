class Public::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
    items_path
  end

  def after_sign_in_path_for(resource)
    items_path
  end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:screen_name, :name, :gender, :is_deleted, :internet_protocol_address, :birth_day])
  end
end
