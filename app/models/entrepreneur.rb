class Entrepreneur < ApplicationRecord

	#Trigger for changes log
	has_paper_trail

	#Hides versions field 
	rails_admin do
       exclude_fields :versions
  	end
	  
	validates :organization, presence: true

  	belongs_to :user
end
