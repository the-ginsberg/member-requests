class User < ActiveRecord::Base
  attr_accessor :password
  
  has_many :gprequests, dependent: :destroy
  has_many :votes, dependent: :destroy

  before_save :downcase_email
  before_save :encrypt_password

  validates_confirmation_of :password
  validates :email, uniqueness: true

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end

  def self.authenticate(email, password)
    user = User.where(email: email).first
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  private

  def downcase_email
    self.email = email.downcase
  end
end
