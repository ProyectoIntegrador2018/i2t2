class Equipment < ActiveRecord::Migration[5.2]
  def change
  	add_column :equipment, :model, :string
  end
end
