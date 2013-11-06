class CreateBookStates < ActiveRecord::Migration
  def change
    create_table :text_states do |t|
      t.integer :text_id, :null => false
      t.integer :user_id, :null => false
      t.string :state

      t.timestamps
    end

    add_index :text_states, :text_id
    add_index :text_states, :user_id
    add_index :text_states, [:text_id, :user_id], :unique => true
  end
end
