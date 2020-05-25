class AddModelEqToEquipment < ActiveRecord::Migration[5.2]
  def change
  	add_column :equipment, :modelEq, :string
  end
end
