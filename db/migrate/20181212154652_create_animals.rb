class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :age
      t.string :type
      t.string :breed
      t.string :gender
      t.string :about
      t.string :adoptionFee

      t.timestamps
    end
  end
end
