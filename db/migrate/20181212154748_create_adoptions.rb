class CreateAdoptions < ActiveRecord::Migration[5.2]
  def change
    create_table :adoptions do |t|
      t.references :user, foreign_key: true
      t.references :animal, foreign_key: true
      t.string :adoption_info

      t.timestamps
    end
  end
end
