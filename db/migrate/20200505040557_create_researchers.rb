class CreateResearchers < ActiveRecord::Migration[5.2]
  def change
    create_table :researchers do |t|

      t.timestamps
    end
  end
end
