class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name, :null => false
      t.date :birthday
      t.string :gender
      t.string :website
      t.text :bio

      t.timestamps
    end

    add_index :authors, :name
  end
end
