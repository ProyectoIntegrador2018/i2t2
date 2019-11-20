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
      redirect_to root_url, notice: "Archivo debe ser un CSV"
      return
    end
    begin
      User.import(params[:file])
    rescue StandardError => e
      redirect_to root_url, notice: e
      return
    end
    redirect_to root_url, notice: "Usuarios importados"
  end

  def edit_profile
    @user = current_user
  end

  def set_user
    # @center = Center.find(params[:id])
  end

  def edit
     @user = User.find(params[:id])
   end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if params[:user][:password].blank?
        if @user.update_without_password(params[:user].except(:password, :password_confirmation).permit(:email, :role))
          format.html { redirect_to root_url, notice: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
        end
      else
        if @user.update_attributes(params[:user])
          format.html { redirect_to root_url, notice: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          flash[:notice] = "Couldn't update."
          render :action => 'edit'
        end
      end
    end
  end


  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      respond_to do |format|
        format.html { redirect_to root_url, notice: 'Usuario was succesfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end
end
