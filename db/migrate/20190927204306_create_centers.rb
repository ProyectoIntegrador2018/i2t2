# frozen_string_literal: true

class CreateCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :centers do |t|
      t.string :full_name
      t.string :short_name
      t.string :website
      t.string :address
      t.date :start_date
      t.float :building_area
      t.float :property_area
      t.float :property_private_funding
      t.float :property_federal_funding
      t.float :property_state_funding
      t.float :property_other_funding
      t.string :property_other_source
      t.float :equipment_private_funding
      t.float :equipment_federal_funding
      t.float :equipment_state_funding
      t.float :equipment_other_funding
      t.string :equipment_other_source
      t.integer :requested_patents_mexico
      t.integer :requested_designs_mexico
      t.integer :requested_patents_us_eu_as
      t.integer :given_patents_mexico
      t.integer :given_designs_mexico
      t.integer :given_patents_us_eu_as
      t.integer :trademarks
      t.integer :copyrights
      t.integer :isi_publications
      t.integer :arbitrated_publications
      t.integer :non_arbitrated_publications
      t.integer :quotes_in_publications
      t.string :director_name
      t.string :director_email
      t.string :director_phone

      t.timestamps
    end
  end
end
