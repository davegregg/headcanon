class PostSerializer < ActiveModel::Serializer
  attributes :id, :slug, :title, :body, :summary, :created_at, :updated_at, :user
end
