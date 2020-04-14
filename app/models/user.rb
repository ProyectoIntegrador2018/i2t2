# frozen_string_literal: true

# Base model of a User that can have different roles.
class User < ApplicationRecord
  require 'csv'

  enum role: %i[admin_centro_inv admin_plataforma admin_patente
                admin_cluster emprendedor_base usuario_general superadmin]

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :usuario_general
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      r = row.to_hash
      unless r.key?('email') && r.key?('role') && r.key?('password')
        raise "Formato de archivo no valido"
      end
      unless User.exists?(email: r['email'])
        User.create!(email: r['email'], role: r['role'], password: r['password'], password_confirmation: r['password'])
      end
    end
  end

  def admin?
    return self.role == 'admin_plataforma'
  end

  def superadmin?
    return self.role == 'superadmin'
  end

  def center_admin?
    return self.role == 'admin_centro_inv'
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :center

  def platform_admin?
    return self.role == 'admin_plataforma'
  end
end
