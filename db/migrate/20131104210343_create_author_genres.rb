class CreateAuthorGenres < ActiveRecord::Migration
  def change
    create_table :author_genres do |t|
      t.integer :author_id, :null => false
      t.integer :genre_id, :null => false

      t.timestamps
    end

    add_index :author_genres, :author_id
    add_index :author_genres, :genre_id
    add_index :author_genres, [:author_id, :genre_id], :unique => true
  end
end
