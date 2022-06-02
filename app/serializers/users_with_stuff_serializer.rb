class UsersWithStuffSerializer < ActiveModel::Serializer
    attributes :id, :username

    has_many :blogs
    has_many :comments
end
