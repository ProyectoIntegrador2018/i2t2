# frozen_string_literal: true

class Equipment < ApplicationRecord

	#Trigger for changes log
	has_paper_trail

	#Hides versions field 
	rails_admin do
       exclude_fields :versions
  	end

  	
	  
	validates :name, :description, presence: true



  	belongs_to :center
end
