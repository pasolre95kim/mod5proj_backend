class Adoption < ApplicationRecord
  belongs_to :user_id
  belongs_to :animal_id
end
