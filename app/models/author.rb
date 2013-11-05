class Author < ActiveRecord::Base
  attr_accessible :name, :birthday, :gender, :website, :bio

  has_many :text_authors,
    :class_name => "TextAuthor",
    :primary_key => :id,
    :foreign_key => :author_id

  has_many :texts,
    :through => :text_authors,
    :source => :text

  has_many :author_genres,
    :class_name => "AuthorGenre",
    :primary_key => :id,
    :foreign_key => :author_id

  has_many :genres,
    :through => :author_genres,
    :source => :genre
end
