class AddUserToEntrepreneur < ActiveRecord::Migration[5.2]
  def change
    add_reference :entrepreneurs, :user, foreign_key: true
  end
end
