class Researcher < ApplicationRecord

	# Trigger for changes log
	has_paper_trail

	#Hides versions field 
	rails_admin do
		exclude_fields :versions
	end
  
	has_many :scientific_articles, dependent: :delete_all, inverse_of: :researcher
	has_many :intellectual_properties, dependent: :delete_all, inverse_of: :researcher
	accepts_nested_attributes_for :scientific_articles, allow_destroy: true, reject_if: ->(attrs) { attrs['title'].blank? }
	accepts_nested_attributes_for :intellectual_properties, allow_destroy: true, reject_if: ->(attrs) { attrs['creation'].blank? }

	belongs_to :user, -> { where(role: :investigador) }
end
