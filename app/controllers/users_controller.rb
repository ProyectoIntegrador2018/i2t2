# frozen_string_literal: true

# Main controller for responding to user actions.
class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: %i[show edit update destroy]

  def inicio
    @users = User.all
  end

  def index
    @users = User.all
  end

  def import
    if File.extname(params[:file]&.original_filename||"") != '.csv'
      redirect_to users_path, notice: "Archivo debe ser un CSV"
      return
    end
    begin
      User.import(params[:file])
    rescue StandardError => error_message
      redirect_to users_path, notice: error_message
      return
    end
    redirect_to users_path, notice: "Usuarios importados"
  end

  def edit_profile
    @user = current_user
  end

  def set_user
  end

  def edit
  end

  def update
    authorize! :change_roles, @user if params[:user][:change_roles]
    respond_to do |format|
      if @user.update(user_params)
        if params[:user][:password].blank?
          format.html { redirect_to edit_user_path, notice: "User was successfully updated." }
        else
          format.html { redirect_to unauthenticated_root, notice: "User was successfully updated." }
        end
        format.json { render :edit, status: :ok, location: @user }
      else
        format.html { redirect_to edit_user_path, notice: "Couldn't update." }
        render :action => 'edit'
      end
    end
  end

  def destroy
    if @user.destroy
      respond_to do |format|
        format.html { redirect_to root_url, notice: 'Usuario was succesfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    def set_user
      if params[:id]
        @user = User.find(params[:id])
      else
        @user = current_user
      end
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :organization, :job, :office_telephone, :contact_telephone, :role)
    end
end
