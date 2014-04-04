class RemoveComicsCovers < ActiveRecord::Migration
  def change
    drop_table :comics_covers
  end
end
