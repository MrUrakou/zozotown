class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  helper_method :current_cart

  def current_cart
    if session[:cart_id]
      @cart = Cart.find[:cart_id]
    else
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :kana_name, :postal_code, :address1, :address2, :phone])
  end
end
