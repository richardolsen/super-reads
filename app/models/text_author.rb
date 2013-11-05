class TextAuthor < ActiveRecord::Base
  belongs_to :text,
    :class_name => "Text",
    :primary_key => :id,
    :foreign_key => :text_id

  belongs_to :author,
    :class_name => "Author",
    :primary_key => :id,
    :foreign_key => :author_id
end
