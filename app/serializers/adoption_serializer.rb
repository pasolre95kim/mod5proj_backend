class AdoptionSerializer < ActiveModel::Serializer
  attributes :id, :user, :animal
  belongs_to :animal
  belongs_to :user
end
