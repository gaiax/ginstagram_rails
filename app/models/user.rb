class User < ApplicationRecord
  attr_accessor :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]
  VALID_PASSWORD_REGEX = /(((?=.*?[a-z])|(?=.*?[A-Z]))(?=.*?\d))[a-z\dA-Z]{8,}/
  validates :password, presence: true, format: { with: VALID_PASSWORD_REGEX }
  validates :screen_name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["screen_name = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      where(conditions).first
    end
  end
end
