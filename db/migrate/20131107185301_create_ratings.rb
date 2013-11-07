class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id, :null => false
      t.integer :text_id, :null => false
      t.integer :rating, :null => false, :default => 5

      t.timestamps
    end

    add_index :ratings, :user_id
    add_index :ratings, :text_id
    add_index :ratings, [:user_id, :text_id], :unique => true
  end
end
