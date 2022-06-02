class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email #, :password_digest

  # has_many :blogs
  # has_many :comments
end
