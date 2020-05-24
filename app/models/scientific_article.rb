class ScientificArticle < ApplicationRecord

	#Trigger for changes log
	has_paper_trail

	#Hides versions field 
	rails_admin do
       exclude_fields :versions
  	end

	validates :title, :authors, :publication_date, presence: true

  	belongs_to :researcher
end
