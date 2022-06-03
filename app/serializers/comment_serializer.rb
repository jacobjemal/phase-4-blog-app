class CommentSerializer < ActiveModel::Serializer
    attributes :username, :content #, :id, :post_id, :content, :user_id, :blog_id
    
    belongs_to :blog
    belongs_to :user
end 
