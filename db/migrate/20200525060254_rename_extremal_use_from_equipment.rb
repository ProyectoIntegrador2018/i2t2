class RenameExtremalUseFromEquipment < ActiveRecord::Migration[5.2]
  def change
  	rename_column :equipment, :extermal_use, :external_use
  end
end
