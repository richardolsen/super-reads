class Friending < ActiveRecord::Base
  attr_accessible :user_id, :friend_id

  validates :user_id, :uniqueness => { :scope => :friend_id }

  belongs_to :user,
    :class_name => "User",
    :primary_key => :id,
    :foreign_key => :user_id

  belongs_to :friend,
    :class_name => "User",
    :primary_key => :id,
    :foreign_key => :friend_id
end
