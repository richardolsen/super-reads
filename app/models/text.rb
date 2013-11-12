class Text < ActiveRecord::Base
  attr_accessible :title, :description, :publisher, :published_date, :publisher_id

  has_many :text_authors,
    :class_name => "TextAuthor",
    :primary_key => :id,
    :foreign_key => :text_id

  has_many :authors,
    :through => :text_authors,
    :source => :author

  has_many :text_genres,
    :class_name => "TextGenre",
    :primary_key => :id,
    :foreign_key => :text_id

  has_many :genres,
    :through => :text_genres,
    :source => :genre

  belongs_to :publisher,
    :class_name => "Publisher",
    :primary_key => :id,
    :foreign_key => :publisher_id

  has_many :ratings,
    :class_name => "Rating",
    :primary_key => :id,
    :foreign_key => :text_id

  has_many :reviews,
    :class_name => "Review",
    :primary_key => :id,
    :foreign_key => :text_id

  has_many :comments, :as => :commentable


  # get all the texts, with those of the user set with `state` and `rating`
  def self.find_all_texts_for_user(user_id)
    Text.find_by_sql([<<-SQL, user_id, user_id])
      SELECT
        texts.*,
        text_states.state AS state,
        ratings.rating AS user_rating
      FROM
        texts
      LEFT OUTER JOIN
        text_states ON (texts.id = text_states.text_id AND text_states.user_id = ?)
      LEFT OUTER JOIN
        ratings ON (texts.id = ratings.text_id AND ratings.user_id = ?)
    SQL
  end

  # just the texts that the user has marked as read, etc.
  def self.find_texts_for_user(user_id)
    Text.find_by_sql([<<-SQL, user_id, user_id])
      SELECT
        texts.*,
        text_states.state AS state,
        ratings.rating AS user_rating
      FROM
        texts
      INNER JOIN
        text_states ON (texts.id = text_states.text_id AND text_states.user_id = ?)
      LEFT OUTER JOIN
        ratings ON (texts.id = ratings.text_id AND ratings.user_id = ?)
    SQL
  end

  def self.find_all_texts_by_author_for_user(author_id, user_id)
    Text.find_by_sql([<<-SQL, user_id, user_id, author_id])
      SELECT
        texts.*,
        text_states.state AS state,
        ratings.rating AS user_rating
      FROM
        texts
      LEFT OUTER JOIN
        text_states ON (texts.id = text_states.text_id AND
          text_states.user_id = ?)
      LEFT OUTER JOIN
        ratings ON (texts.id = ratings.text_id AND
          ratings.user_id = ?)
      INNER JOIN
        text_authors ON (texts.id = text_authors.text_id AND
          text_authors.author_id = ?)
    SQL
  end


  def as_json(options = {})
    super(:include => [:authors], :methods => [:average_rating, :rated?])
  end

  def rated?
    self.ratings.count > 0
  end

  def average_rating
    ratings = self.ratings.pluck(:rating)
    if ratings.length > 0
      ratings.inject(0, :+) / ratings.length
    else
      0
    end
  end

  def comments_by_parent_id
    hash = Hash.new { |h, k| h[k] = [] }

    self.comments.includes(:user).each do |comment|
      hash[comment.parent_comment_id] << comment
    end

    hash
  end
end
