class Rating < ActiveRecord::Base
  attr_accessible :text_id, :rating # always create using the current user

  before_validation :temper_rating

  belongs_to :user,
    :class_name => "User",
    :primary_key => :id,
    :foreign_key => :user_id

  belongs_to :text,
    :class_name => "Text",
    :primary_key => :id,
    :foreign_key => :text_id


  def temper_rating
    if self.rating > 5
      self.rating = 5
    elsif self.rating < 1
      self.rating = 1
    end
  end

  def average_rating
    ratings = Rating.where(:text_id => self.text_id).pluck(:rating)

    if ratings.length > 0
      ratings.inject(0, :+) / ratings.length
    else
      0
    end
  end
end
