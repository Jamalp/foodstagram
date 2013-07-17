class CreateUserFavoritesTable < ActiveRecord::Migration
  def up
    create_table :favorites_users, id: false do |t|
      t.integer :favorite_id
      t.integer :user_id
    end
  end

  def down
    drop_table :favorites_users
  end
end
