class Public::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  def after_sign_in_path_for(resource)
    end_user_path(current_end_user.screen_name)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

end
