class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|

      t.column :image, :bytea

    end
  end
end
