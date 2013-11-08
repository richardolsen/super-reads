class Review < ActiveRecord::Base
  attr_accessible :title, :body

  validates :user_id, :uniqueness => { :scope => :text_id }

  belongs_to :user,
    :class_name => "User",
    :primary_key => :id,
    :foreign_key => :user_id

  belongs_to :text,
    :class_name => "Text",
    :primary_key => :id,
    :foreign_key => :text_id

  has_many :comments, :as => :commentable
end
