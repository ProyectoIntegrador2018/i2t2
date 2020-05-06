# frozen_string_literal: true

class Award < ApplicationRecord
	has_paper_trail
  belongs_to :center
end
