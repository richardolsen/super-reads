class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, :null => false
      t.integer :commentable_id
      t.string :commentable_type
      t.integer :parent_comment_id
      t.string :title
      t.text :body

      t.timestamps
    end

    add_index :comments, :user_id
    add_index :comments, :commentable_id
    add_index :comments, :parent_comment_id
  end
end
