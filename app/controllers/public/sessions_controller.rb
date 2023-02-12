class Public::SessionsController < Devise::SessionsController
  before_action :end_user_state, only: [:create]

  def after_sign_in_path_for(resource)
    end_user_path(current_end_user.screen_name)
  end

  def after_sign_out_path_for(resource)
    root_path
  end



  protected

  def end_user_state
    @end_user = EndUser.find_by(screen_name: params[:end_user][:screen_name])
    return if !@end_user

    if @end_user.valid_password?(params[:end_user][:password]) && @end_user.is_deleted == "unsubscribe"
      flash[:danger] = "無効なIDです。新規会員登録してください。"
      redirect_to new_end_user_registration_path
    end
  end

end
