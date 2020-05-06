# frozen_string_literal: true

class IdtiService < ApplicationRecord
	has_paper_trail
  belongs_to :center
end
