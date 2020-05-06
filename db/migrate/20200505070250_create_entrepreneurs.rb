class CreateEntrepreneurs < ActiveRecord::Migration[5.2]
  def change
    create_table :entrepreneurs do |t|
      t.string :organization

      t.timestamps
    end
  end
end
