class CreateFriendings < ActiveRecord::Migration
  def change
    create_table :friendings do |t|
      t.integer :user_id, :null => false
      t.integer :friend_id, :null => false

      t.timestamps
    end

    add_index :friendings, :user_id
    add_index :friendings, :friend_id
    add_index :friendings, [:user_id, :friend_id], :unique => true
  end
end
