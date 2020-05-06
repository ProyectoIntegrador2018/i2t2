# frozen_string_literal: true

class Equipment < ApplicationRecord
	has_paper_trail
  belongs_to :center
end
