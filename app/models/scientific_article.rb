class ScientificArticle < ApplicationRecord
	has_paper_trail
  belongs_to :researcher
end
