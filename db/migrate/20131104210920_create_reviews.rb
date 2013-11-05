class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id, :null => false
      t.integer :text_id, :null => false
      t.string :title
      t.text :body

      t.timestamps
    end

    add_index :reviews, :user_id
    add_index :reviews, :text_id
  end
end
