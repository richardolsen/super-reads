class Publisher < ActiveRecord::Base
  attr_accessible :name, :city

  has_many :texts,
    :class_name => "Text",
    :primary_key => :id,
    :foreign_key => :publisher_id
end
