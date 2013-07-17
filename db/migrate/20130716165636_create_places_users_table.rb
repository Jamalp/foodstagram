class CreatePlacesUsersTable < ActiveRecord::Migration
  def up
    create_table :places_users, id: false do |t|
      t.integer :place_id
      t.integer :user_id
    end
  end

  def down
    drop_table :places_users
  end
end
