# frozen_string_literal: true

# Main controller for responding to user actions.
class UsuariosController < ApplicationController
  # before_filter :authenticate_user!
  def inicio
  	@users = User.all
  end


  def edit_profile
    @user = current_user
  end
end
