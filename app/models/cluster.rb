# frozen_string_literal: true

class Cluster < ApplicationRecord
	has_paper_trail
  has_and_belongs_to_many :centers
end
