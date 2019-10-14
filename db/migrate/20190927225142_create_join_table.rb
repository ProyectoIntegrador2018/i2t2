# frozen_string_literal: true

class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :industries, :centers do |t|
      t.index :industry_id
      t.index :center_id
    end
  end
end
