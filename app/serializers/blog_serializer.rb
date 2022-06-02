class BlogSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :user_id

    belongs_to :user 
    # has_many :comments
end