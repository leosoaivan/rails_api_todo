class User < ApplicationRecord
  has_secure_password

  has_many :todos, foreign_key: :created_by

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
