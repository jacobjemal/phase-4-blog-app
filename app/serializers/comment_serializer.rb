class CommentSerializer < ActiveModel::Serializer
    attributes :id, :post_id, :content, :user_id, :blog_id
    
    belongs_to :blog
    belongs_to :user
end 
