# frozen_string_literal: true

# Base model of a User that can have different roles.
class User < ApplicationRecord
  require 'csv'
  has_paper_trail

  rails_admin do
    exclude_fields :remember_created_at, :reset_password_sent_at, :versions
  end

  validates :email, :contact_telephone, :name, :organization, presence: true

  enum role: %i[admin_centro_inv admin_cluster usuario_empresa
                moderador usuario_emprendedor usuario_general superadmin investigador]

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :usuario_general
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

  def investigador?
    return self.role == 'investigador'
  end

  def admin_cluster?
    return self.role == 'admin_cluster'
  end

  # CSV first-line format for each available import
  # USER:         email, role, password, name, organization, job, contact_telephone, office_telephone
  # CENTER:       USER params, profile: 'center', full_name, short_name, website, address
  # CLUSTER:      USER params, profile: 'cluster', cluster_name
  # COMPANY:      USER params, profile: 'company', company_name, industry, reniecyt, location
  # ENTREPRENEUR: USER params, profile: 'entrepreneur', organization
  # RESEARCHER:   USER params, profile: 'researcher'
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      r = row.to_hash

      unless r.key?('email') && r.key?('role') && r.key?('password') &&
             r.key?('name') && r.key?('organization') && r.key?('job') &&
             r.key?('contact_telephone') && r.key?('office_telephone')
        raise "Formato de archivo no valido"
      end

      user = nil
      unless User.exists?(email: r['email'])
        user = User.create!(email: r['email'],
                            role: r['role'],
                            password: r['password'],
                            password_confirmation: r['password'],
                            name: r['name'],
                            organization: r['organization'],
                            job: r['job'],
                            contact_telephone: r['contact_telephone'],
                            office_telephone: r['office_telephone'])
      else
        user = User.find_by_email(r['email'])
      end

      if r.key?('profile')
        case r['profile']
        when 'center'
          unless r.key?('full_name') && r.key?('short_name') && r.key?('website') && r.key?('address')
            raise "Formato del archivo con perfil de Centro no es valido"
          end

          center = nil
          if center = Center.find_by_full_name(r['full_name'])
            center.user = user
          else
            center = Center.new(user: user,
                                full_name: r['full_name'],
                                short_name: r['short_name'],
                                website: r['website'],
                                address: r['address'],
                                start_date: Time.now,
                                director_name: "Importado desde archivo CSV",
                                director_email: "Importado desde archivo CSV",
                                director_phone: "Importado desde archivo CSV")
          end

          unless center.save
            raise "No se pudo guardar el centro #{r['full_name']} para el usuario #{user.name} con id #{user.id}"
          end

        when 'cluster'
          unless r.key?('cluster_name')
            raise "Formato del archivo con perfil de Cluster no es valido"
          end

          cluster = nil
          if cluster = Cluster.find_by_name(r['cluster_name'])
            cluster.user_id = user.id
          else
            cluster = Cluster.new(user_id: user.id, name: r['cluster_name'])
          end

          unless cluster.save
            raise "No se pudo guardar el cluter #{r['cluster_name']} para el usuario #{user.name} con id #{user.id}"
          end

        when 'company'
          unless r.key?('company_name') && r.key?('industry') && r.key?('reniecyt') && r.key?('location')
            raise "Formato del archivo con perfil de compañia no es valido"
          end

          company = nil
          if company = Company.find_by_name(r['company_name'])
            company.user = user
          else
            company = Company.new(user: user,
                                  name: r['company_name'],
                                  industry: r['industry'],
                                  reniecyt: r['reniecyt'],
                                  location: r['location'])
          end

          unless company.save
            raise "No se pudo guardar la compañia #{r['company_name']} para el usuario #{user.name} con id #{user.id}"
          end

        when 'entrepreneur'
          unless r.key?('organization')
            raise "Formato del archivo con perfil de emprendedor no es valido"
          end

          entrepreneur = nil
          if entrepreneur = Entrepreneur.find_by_organization(r['organization'])
            entrepreneur.user = user
          else
            entrepreneur = Entrepreneur.new(user: user,
                                            organization: r['organization'])
          end

          unless entrepreneur.save
            raise "No se pudo guardar el perfil emprendedor de #{r['organization']} para el usuario #{user.name} con id #{user.id}"
          end

        when 'researcher'
          raise "El usuario #{user.name} con id #{user.id} no tiene el rol de investigador." unless user.investigador?

          unless user.researcher
            researcher = Researcher.new(user: user)

            unless researcher.save
              raise "No se pudo guardar el investigador con el usuario #{user.name} con id #{user.id}"
            end
          end

        else
          raise "Nombre del perfil invalido para el usuario #{user.name} con id #{user.id}"
        end
      end

    end
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :center, dependent: :nullify
  has_one :cluster, dependent: :nullify
  has_one :company, dependent: :nullify
  has_one :entrepreneur, dependent: :destroy
  has_one :researcher, dependent: :destroy
end
