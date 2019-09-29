# frozen_string_literal: true

# Base model of a User that can have different roles.
class User < ApplicationRecord
  enum role: %i[admin_centro_inv admin_plataforma admin_patente
                admin_cluster emprendedor_base usuario_general]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :usuario_general
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
