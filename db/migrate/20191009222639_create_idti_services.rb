class CreateIdtiServices < ActiveRecord::Migration[5.2]
  def change
    create_table :idti_services do |t|
      t.string :name
      t.string :industry
      t.belongs_to :center, foreign_key: true

      t.timestamps
    end
  end
end
