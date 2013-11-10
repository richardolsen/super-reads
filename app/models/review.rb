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


  def self.all_with_rating(text_id)
    self.find_by_sql([<<-SQL, text_id])
      SELECT
        reviews.*,
        ratings.rating AS rating
      FROM
        reviews
      LEFT OUTER JOIN
        ratings ON (reviews.text_id = ratings.text_id AND
          reviews.user_id = ratings.user_id)
      WHERE
        reviews.text_id = ?
    SQL
  end


  def as_json(options = {})
    super(:include => :user)
  end
end
