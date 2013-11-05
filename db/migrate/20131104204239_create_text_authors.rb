class CreateTextAuthors < ActiveRecord::Migration
  def change
    create_table :text_authors do |t|
      t.integer :text_id, :null => false
      t.integer :author_id, :null => false

      t.timestamps
    end

    add_index :text_authors, :text_id
    add_index :text_authors, :author_id
    add_index :text_authors, [:text_id, :author_id], :unique => true
  end
end
