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

  has_many :reviews,
    :class_name => "Review",
    :primary_key => :id,
    :foreign_key => :text_id

  has_many :comments, :as => :commentable


  def self.find_texts_for_user(user_id)
    Text.find_by_sql([<<-SQL, user_id])
      SELECT
        texts.*,
        text_states.state AS state
      FROM
        texts
      LEFT OUTER JOIN
        text_states ON (texts.id = text_states.text_id)
      WHERE
        text_states.user_id = ?
    SQL
  end
end
