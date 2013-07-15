class CreateFavorites < ActiveRecord::Migration
  def up
    create_table :favorites do |t|
      t.belongs_to :user
      t.belongs_to :photo
    end
  end

  def down
    drop_table :favorites
  end
end
