class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include CurrentCart
  before_action :set_cart, :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def default_url_options
    { host: ENV['DOMAIN'] || 'localhost:3000' }
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: %i[name description avatar]
    )
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: %i[name description avatar]
    )
  end
end
