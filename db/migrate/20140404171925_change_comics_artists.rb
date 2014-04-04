class ChangeComicsArtists < ActiveRecord::Migration
  def change
    rename_table :comics_artists, :artists_comics
  end
end
