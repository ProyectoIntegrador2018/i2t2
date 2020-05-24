class Researcher < ApplicationRecord

	#Trigger for changes log
	has_paper_trail

	#Hides versions field 
	rails_admin do
       exclude_fields :versions
  	end
  
  	has_many :scientific_articles
  	has_many :intellectual_properties
  
  	belongs_to :user
end
