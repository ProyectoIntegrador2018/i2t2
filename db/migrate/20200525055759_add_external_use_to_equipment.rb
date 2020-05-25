class AddExternalUseToEquipment < ActiveRecord::Migration[5.2]
  def change
  	add_column :equipment, :extermal_use, :string
  end
end
