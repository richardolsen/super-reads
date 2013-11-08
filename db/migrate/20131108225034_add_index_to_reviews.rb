class AddIndexToReviews < ActiveRecord::Migration
  def change
    add_index :reviews, [:user_id, :text_id], :unique => true
  end
end
