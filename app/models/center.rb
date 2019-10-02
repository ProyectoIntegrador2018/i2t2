class Center < ApplicationRecord
  has_and_belongs_to_many :industries
  has_and_belongs_to_many :clusters
  has_many :awards
  has_many :equipments
  accepts_nested_attributes_for :equipments
end
