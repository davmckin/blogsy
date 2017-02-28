class UserSerializer < ActiveModel::Serializer
  attributes :username, :posts_count, :email, :bio

end
