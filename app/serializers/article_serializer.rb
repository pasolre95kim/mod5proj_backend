class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :abstract, :body, :image
end
