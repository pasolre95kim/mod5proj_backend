class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :age
      t.string :species
      t.string :breed
      t.string :gender
      t.string :about
      t.string :health
      t.string :preferredHome
      t.string :adoptionFee
      t.string :image
      t.timestamps
    end
  end
end
