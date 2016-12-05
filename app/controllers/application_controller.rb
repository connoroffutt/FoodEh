class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

private
  def not_authenticated
    redirect_to login_path, alert: "Please Login!"
  end

end
