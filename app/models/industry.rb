# frozen_string_literal: true

class Industry < ApplicationRecord
	
	#Trigger for changes log
	has_paper_trail

	#Hides versions field 
	rails_admin do
       exclude_fields :versions
  	end

	validates :name, presence: true

  	has_and_belongs_to_many :centers
end
