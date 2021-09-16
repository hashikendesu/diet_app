class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  before_action :set_weight

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :text, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :text, :image])
  end

  def set_weight
    @weight = Weight.last
  end
end
