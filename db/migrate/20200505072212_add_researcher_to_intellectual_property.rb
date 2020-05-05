class AddResearcherToIntellectualProperty < ActiveRecord::Migration[5.2]
  def change
    add_reference :intellectual_properties, :researcher, foreign_key: true
  end
end
