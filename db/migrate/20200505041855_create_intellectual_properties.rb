class CreateIntellectualProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :intellectual_properties do |t|
      t.string :creation
      t.string :description
      t.string :institution
      t.integer :registration_year
      t.integer :publication_year
      t.string :keywords

      t.timestamps
    end
  end
end
