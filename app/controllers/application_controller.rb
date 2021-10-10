class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def set_search
    @users = User.all
    @locations = Location.all
    @q = Location.ransack(params[:q])
    @locations = @q.result(distinct: true)
  end
  
  private
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
