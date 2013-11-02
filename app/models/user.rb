class User < ActiveRecord::Base
  attr_accessible :username, :password, :email, :firstname, :lastname, :identifier
  attr_reader :password
  attr_accessor :identifier # used for the log in form

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


  private
    def ensure_session_token
      self.session_token ||= self.class.generate_session_token
    end
end
