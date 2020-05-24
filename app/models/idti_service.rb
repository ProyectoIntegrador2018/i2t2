# frozen_string_literal: true

class IdtiService < ApplicationRecord
	
	#Trigger for changes log
	has_paper_trail

	#Hides versions field 
	rails_admin do
       exclude_fields :versions
  	end

  	belongs_to :center
end
