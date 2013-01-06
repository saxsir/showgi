class RemoveFavoriteFromFavorites < ActiveRecord::Migration
  def up
    remove_column :favorites, :favorite
      end

  def down
    add_column :favorites, :favorite, :boolean
  end
end
