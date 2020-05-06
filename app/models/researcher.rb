class Researcher < ApplicationRecord
	has_paper_trail
  has_many :scientific_articles
  has_many :intellectual_properties
  belongs_to :user
end
