class AddUserToResearcher < ActiveRecord::Migration[5.2]
  def change
    add_reference :researchers, :user, foreign_key: true
  end
end
