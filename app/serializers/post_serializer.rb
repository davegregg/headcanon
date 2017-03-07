class PostSerializer < ActiveModel::Serializer
  attributes :slug, :body, :created_at, :updated_at
end
