# frozen_string_literal: true

class CreateIdtiAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :idti_areas do |t|
      t.string :name
      t.belongs_to :center, foreign_key: true

      t.timestamps
    end
  end
end
