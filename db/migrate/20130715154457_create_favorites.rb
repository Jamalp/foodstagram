class CreateFavorites < ActiveRecord::Migration
  def up
    create_table :favorites do |t|
      t.string :name
      t.string :location
      t.belongs_to :user
    end
  end

  def down
    drop_table :favorites
  end
end
