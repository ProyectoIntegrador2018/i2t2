class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :industry
      t.string :reniecyt
      t.string :location

      t.timestamps
    end
  end
end
