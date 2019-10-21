# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
  	super
  end

  def update
    super
  end

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role)
  end
end