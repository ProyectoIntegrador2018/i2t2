class AddTransferOfficeContactToCenters < ActiveRecord::Migration[5.2]
  def change
    add_column :centers, :transfer_office_contact, :string
  end
end
