class PostSerializer < ActiveModel::Serializer
  attributes :id, :slug, :body, :created_at, :updated_at
end
