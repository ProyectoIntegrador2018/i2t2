class IntellectualProperty < ApplicationRecord
	
	#Trigger for changes log
	has_paper_trail

	#Hides versions field 
	rails_admin do
       exclude_fields :versions
  	end

	validates :creation, :description, :registration_year,
			  :publication_year, :keywords, presence: true

  	belongs_to :researcher
end
