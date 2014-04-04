class Comics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :name
      t.integer :issue
    end
  end
end
