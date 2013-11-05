class CreateBooks < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :title, :null => false
      t.text :description
      t.integer :publisher_id, :null => false
      t.date :published_date

      t.timestamps
    end

    add_index :texts, :title
    add_index :texts, :publisher_id
  end
end
