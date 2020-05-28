class AddAttributesToEquipment < ActiveRecord::Migration[5.2]
  def change
  	add_column :equipment, :brand, :string
  	add_column :equipment, :applications, :string
  end
end
