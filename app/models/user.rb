# frozen_string_literal: true

# Base model of a User that can have different roles.
class User < ApplicationRecord
  require 'csv'
  has_paper_trail

  rails_admin do
     
       exclude_fields :remember_created_at, :reset_password_sent_at, :versions
     
  end

  enum role: %i[admin_centro_inv admin_cluster usuario_empresa
                moderador usuario_emprendedor usuario_general superadmin investigador]

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :usuario_general
  end

  # CSV first-line format for each available import
  # ONLY USER:    email, role, password, name, organization, job, contact_telephone, office_telephone
  # CENTER:       ONLY USER params, profile: 'center', full_name, short_name, website, address
  # CLUSTER:      ONLY USER params, profile: 'cluster', cluster_name
  # COMPANY:      ONLY USER params, profile: 'company', company_name, industry, reniecyt, location
  # ENTREPRENEUR: ONLY USER params, profile: 'entrepreneur', organization
  # RESEARCHER:   ONLY USER params, profile: 'researcher'
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      r = row.to_hash
      unless r.key?('email') && r.key?('role') && r.key?('password') &&
             r.key?('name') && r.key?('organization') && r.key?('job') &&
             r.key?('contact_telephone') && r.key?('office_telephone')
        raise "Formato de archivo no valido"
      end
      unless User.exists?(email: r['email'])
        User.create!(email: r['email'],
                     role: r['role'],
                     password: r['password'],
                     password_confirmation: r['password'],
                     name: r['name'],
                     organization: r['organization'],
                     job: r['job'],
                     contact_telephone: r['contact_telephone'],
                     office_telephone: r['office_telephone'])
      end

      user = User.find(email: r['email'])

      case r.key?('profile')
      when 'center'
        unless r.key?('full_name') && r.key?('short_name') && r.key?('website') && r.key?('address')
          raise "Formato del archivo con perfil de Centro no es valido"
        end

        unless Center.find(full_name: r['full_name'])
          center = Center.new(user: user,
                     full_name: r['full_name'],
                     short_name: r['short_name'],
                     website: r['website'],
                     address: r['address'])

          unless center.save
            raise "No se pudo guardar el centro #{r['full_name']}"
          end
        end

      when 'cluster'
        unless r.key?('cluster_name')
          raise "Formato del archivo con perfil de Cluster no es valido"
        end

        unless Cluster.find(name: r['cluster_name'])
          cluster = Cluster.new(user: user,
                     name: r['cluster_name'])

          unless cluster.save
            raise "No se pudo guardar el cluter #{r['cluster_name']}"
          end
        end

      when 'company'
        unless r.key?('company_name') && r.key?('industry') && r.key?('reniecyt') && r.key?('location')
          raise "Formato del archivo con perfil de compañia no es valido"
        end

        unless Company.find(name: r['company_name'])
          company = Company.new(user: user,
                     name: r['company_name'],
                     industry: r['industry'],
                     reniecyt: r['reniecyt'],
                     location: r['location'])

          unless company.save
            raise "No se pudo guardar la compañia #{r['company_name']}"
          end
        end

      when 'entrepreneur'
        unless r.key?('organization')
          raise "Formato del archivo con perfil de emprendedor no es valido"
        end

        unless Entrepreneur.find(organization: r['organization'])
          entrepreneur = Entrepreneur.new(user: user,
                     organization: r['organization'])

          unless entrepreneur.save
            raise "No se pudo guardar el perfil emprendedor de #{r['organization']}"
          end
        end

      when 'researcher'
        unless user.researcher
          researcher = Researcher.new(user: user)

          unless researcher.save
            raise "No se pudo guardar el investigador con el usuario #{user.email}"
          end
        end

      else
        raise "Nombre del perfil invalido"
      end

    end
  end

  def admin?
    return self.role == 'moderador'
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
  has_one :company
  has_one :researcher
  has_one :entrepreneur
  has_one :cluster
end
