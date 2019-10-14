# frozen_string_literal: true

class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.string :name
      t.date :date
      t.belongs_to :center, foreign_key: true

      t.timestamps
    end
  end
end
