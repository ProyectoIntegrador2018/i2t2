# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def authenticate_user!
    redirect_to :unauthenticated_root, notice: "Debes iniciar sesión para poder ver la página." unless user_signed_in?
  end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up)  { |u| u.permit(  :email, :password, :password_confirmation, roles: [] ) }
  # end
end
