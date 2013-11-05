class CreateTextGenres < ActiveRecord::Migration
  def change
    create_table :text_genres do |t|
      t.integer :text_id, :null => false
      t.integer :genre_id, :null => false

      t.timestamps
    end

    add_index :text_genres, :text_id
    add_index :text_genres, :genre_id
    add_index :text_genres, [:text_id, :genre_id], :unique => true
  end
end
