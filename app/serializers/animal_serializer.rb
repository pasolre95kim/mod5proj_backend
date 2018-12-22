class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :species, :breed, :gender, :about, :image, :adoptionFee, :preferredHome, :health
  has_many :adoptions
end
