class Comment < ActiveRecord::Base
  attr_accessible :title,
                  :body,
                  :user_id,
                  :commentable_id,
                  :commentable_type,
                  :parent_comment_id

  belongs_to :user,
    :class_name => "User",
    :primary_key => :id,
    :foreign_key => :user_id

  belongs_to :commentable, :polymorphic => true

  belongs_to :parent_comment,
    :class_name => "Comment",
    :primary_key => :id,
    :foreign_key => :parent_comment_id

  has_many :replies,
    :class_name => "Comment",
    :primary_key => :id,
    :foreign_key => :parent_comment_id
end
