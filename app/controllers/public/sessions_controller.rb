class Public::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  def after_sign_in_path_for(resource)
    items_path
  end

  def after_sign_out_path_for(resource)
    items_path
  end

end
