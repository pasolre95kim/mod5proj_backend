class AddAbstractToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :abstract, :string
  end
end
