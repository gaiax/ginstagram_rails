class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  VALID_PASSWORD_REGEX = /(((?=.*?[a-z])|(?=.*?[A-Z]))(?=.*?\d))[a-z\dA-Z]{8,}/
  validates :password, presence: true, format: { with: VALID_PASSWORD_REGEX }
end
