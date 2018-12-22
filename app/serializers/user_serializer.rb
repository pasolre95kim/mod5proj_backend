class UserSerializer < ActiveModel::Serializer
  # don't give out password
  attributes :id, :username, :admin
  has_many :adoptions
end
