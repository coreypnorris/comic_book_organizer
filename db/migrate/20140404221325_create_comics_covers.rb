class CreateComicsCovers < ActiveRecord::Migration
  def change
    create_table :comics_covers do |t|
      t.belongs_to :comic
      t.belongs_to :cover
    end
  end
end
