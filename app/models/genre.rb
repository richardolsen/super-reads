class Genre < ActiveRecord::Base
  attr_accessible :name

  has_many :text_genres,
    :class_name => "TextGenre",
    :primary_key => :id,
    :foreign_key => :genre_id

  has_many :texts,
    :through => :text_genres,
    :source => :text

  has_many :author_genres,
    :class_name => "AuthorGenre",
    :primary_key => :id,
    :foreign_key => :genre_id

  has_many :authors,
    :through => :author_genres,
    :source => :author
end
