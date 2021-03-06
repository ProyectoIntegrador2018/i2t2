# frozen_string_literal: true

class Center < ApplicationRecord

  #Trigger for changes log
  has_paper_trail

  #Hides versions field 
  rails_admin do
      exclude_fields :versions
    end
  
  validates :full_name, :short_name, :website, :address, :start_date,
           :director_name, :director_email, :director_phone, presence: true

  has_and_belongs_to_many :industries
  has_and_belongs_to_many :clusters
  has_many :awards, dependent: :delete_all
  has_many :equipments, dependent: :delete_all
  has_many :idti_areas, dependent: :delete_all
  has_many :idti_services, dependent: :delete_all
  accepts_nested_attributes_for :equipments, allow_destroy: true, reject_if: ->(attrs) { attrs['name'].blank? }
  accepts_nested_attributes_for :awards, allow_destroy: true, reject_if: ->(attrs) { attrs['name'].blank? }
  accepts_nested_attributes_for :idti_areas, allow_destroy: true, reject_if: ->(attrs) { attrs['name'].blank? }
  accepts_nested_attributes_for :idti_services, allow_destroy: true, reject_if: ->(attrs) { attrs['name'].blank? }

  belongs_to :user
end
