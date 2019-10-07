class Center < ApplicationRecord
  validates :full_name, :short_name, :website, :address, :start_date, :building_area,
    :property_area, :property_private_funding, :property_state_funding,
    :equipment_private_funding, :equipment_federal_funding, :equipment_state_funding,
    :director_name, :director_email, :director_phone, :presence => true
  has_and_belongs_to_many :industries
  has_and_belongs_to_many :clusters
  has_many :awards
  has_many :equipments
  accepts_nested_attributes_for :equipments, allow_destroy: true
  accepts_nested_attributes_for :awards, allow_destroy: true

end
