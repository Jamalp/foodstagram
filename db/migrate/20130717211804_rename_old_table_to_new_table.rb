class RenameOldTableToNewTable < ActiveRecord::Migration
  def up
    rename_table :favorites_users, :places_users
  end

  def down
    drop_table :RenameOldTableToNewTable
  end
end
