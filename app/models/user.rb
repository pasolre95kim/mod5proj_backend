class User < ApplicationRecord
  has_many :articles
  has_many :adoptions
  has_many :animals, through: :adoptions
end
