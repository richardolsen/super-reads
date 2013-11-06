class User < ActiveRecord::Base
  attr_accessible :username, :password, :email, :firstname, :lastname, :identifier
  attr_reader :password

  # used for the log in form
  attr_accessor :identifier
  attr_accessor :friended


  validates :username, :email, :uniqueness => true
  validates :username, :email, :firstname, :lastname, :session_token, :presence => true
  validates :password_digest, :presence => { :message => "Password can't be blank" }
  validates :password, :length => { :minimum => 6, :allow_nil => true }

  after_initialize :ensure_session_token

  has_many :friendings,
    :class_name => "Friending",
    :primary_key => :id,
    :foreign_key => :user_id

  has_many :friends,
    :through => :friendings,
    :source => :friend

  has_many :reviews,
    :class_name => "Review",
    :primary_key => :id,
    :foreign_key => :user_id

  has_many :comments,
    :class_name => "Comment",
    :primary_key => :id,
    :foreign_key => :user_id

  has_many :text_states,
    :class_name => "TextState",
    :primary_key => :id,
    :foreign_key => :user_id

  # has_many :texts,
  #   :through => :text_states,
  #   :source => :text


  def self.find_by_credentials(identifier, password)
    if /@/ =~ identifier
      user = self.find_by_email(identifier)
    else
      user = self.find_by_username(identifier)
    end

    return nil if user.nil?

    return (user.is_password?(password) ? user : nil)
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end


  def as_json(options = {})
    options[:except] = [:password, :password_digest, :session_token, :identifier]
    super(options)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token
    self.session_token = self.class.generate_session_token
  end


  def texts
    texts = Text.find_by_sql([<<-SQL, self.id])
        SELECT
          texts.*,
          text_states.state AS state
        FROM
          texts
        INNER JOIN
          text_states ON (texts.id = text_states.text_id)
        WHERE
          text_states.user_id = ?
      SQL
    # texts = Text
    #   .includes(:authors)
    #   .joins("INNER JOIN text_states ON (texts.id = text_states.text_id)")
    #   .where("text_states.user_id = #{self.id}")
  end


  private
    def ensure_session_token
      self.session_token ||= self.class.generate_session_token
    end
end
