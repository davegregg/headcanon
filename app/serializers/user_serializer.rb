class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :token, :password_digest, :avatar, :banner
end
