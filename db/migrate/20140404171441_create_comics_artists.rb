class CreateComicsArtists < ActiveRecord::Migration
  def change
    create_table :comics_artists do |t|
      t.belongs_to :comic
      t.belongs_to :artist
    end
  end
end
