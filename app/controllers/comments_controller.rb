class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments, status: 200
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.create!(comments_params)
        render json: comment,  status: :created
    end

    def update
        comment = Comment.find(params[:id])
        comment.update!(comments_params)
        render json: comment, status: :created
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        render json: {}, status: 200
        # head :no_content
    end

    private

    def comments_params
        params.permit(:user_id, :blog_id, :content)
    end
end
