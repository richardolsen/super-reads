class TextGenre < ActiveRecord::Base
  belongs_to :text,
    :class_name => "Text",
    :primary_key => :id,
    :foreign_key => :text_id

  belongs_to :genre,
    :class_name => "Genre",
    :primary_key => :id,
    :foreign_key => :genre_id
end
