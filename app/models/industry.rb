# frozen_string_literal: true

class Industry < ApplicationRecord
  has_and_belongs_to_many :centers
end
