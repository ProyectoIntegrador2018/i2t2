class RemoveModelEqToEquipment < ActiveRecord::Migration[5.2]
  def change
  	remove_column :equipment, :modelEq, :string
  end
end
