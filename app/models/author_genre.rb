class AuthorGenre < ActiveRecord::Base
  belongs_to :author,
    :class_name => "Author",
    :primary_key => :id,
    :foreign_key => :author_id

  belongs_to :genre,
    :class_name => "Genre",
    :primary_key => :id,
    :foreign_key => :genre_id
end
