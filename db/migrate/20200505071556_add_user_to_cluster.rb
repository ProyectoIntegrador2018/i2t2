class AddUserToCluster < ActiveRecord::Migration[5.2]
  def change
    add_reference :clusters, :user, foreign_key: true
  end
end
