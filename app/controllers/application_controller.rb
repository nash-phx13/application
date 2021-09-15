class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    #devise利用の機能（ユーザ登録、ログイン認証など）が使われる場合、その前にconfigure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) #ユーザ登録（sign_up）の際に、ユーザ名（name）のデータ操作が許可
  end
end
