class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: {case_sensitive: false}
  has_many :articles
  has_many :adoptions
  has_many :animals, through: :adoptions
end
