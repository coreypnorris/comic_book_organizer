class AddComicToCover < ActiveRecord::Migration
  def change
    add_column :covers, :comic_id, :int
  end
end
