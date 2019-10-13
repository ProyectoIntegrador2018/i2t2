class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.text :description
      t.boolean :available
      t.belongs_to :center, foreign_key: true

      t.timestamps
    end
  end
end
