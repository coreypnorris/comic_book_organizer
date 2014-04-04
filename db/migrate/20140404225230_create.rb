class Create < ActiveRecord::Migration
  def change
    create_table :comics_writers do |t|
      t.belongs_to :comic
      t.belongs_to :writer
    end
  end
end
