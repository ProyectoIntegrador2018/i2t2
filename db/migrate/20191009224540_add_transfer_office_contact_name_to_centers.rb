class AddTransferOfficeContactNameToCenters < ActiveRecord::Migration[5.2]
  def change
    add_column :centers, :transfer_office_contact_name, :string
  end
end
