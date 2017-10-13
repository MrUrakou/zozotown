class ApplicationController < ActionController::Base
  protect_from_forgery except: :create
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :kana_name, :postal_code, :address1, :address2, :phone])
  end
end
