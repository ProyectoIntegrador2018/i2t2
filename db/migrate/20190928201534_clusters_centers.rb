class ClustersCenters < ActiveRecord::Migration[5.2]
  def change
    create_join_table :clusters, :centers do |t|
       t.index :cluster_id
       t.index :center_id
    end
  end
end
