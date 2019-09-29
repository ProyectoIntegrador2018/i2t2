# frozen_string_literal: true

class DropCentro < ActiveRecord::Migration[5.2]
  def up
    drop_table :centro_investigacions
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
