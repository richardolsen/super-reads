class TextState < ActiveRecord::Base
  attr_accessible :text_id, :user_id, :state

  CURRENT = :current
  QUEUE   = :queue
  READ    = :read

  belongs_to :user
  belongs_to :text
end
