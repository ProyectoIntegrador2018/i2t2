class AddUserInfoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :organization, :string
    add_column :users, :job, :string
    add_column :users, :contact_telephone, :string
    add_column :users, :office_telephone, :string
  end
end
