# frozen_string_literal: true

class IdtiArea < ApplicationRecord
	has_paper_trail
  belongs_to :center
end
