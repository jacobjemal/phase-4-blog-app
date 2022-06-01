class BlogsController < ApplicationController


    def index
        blog = Blog.all
        render json: blog, status: 200
    end

    def show
        blog = Blog.find_by(id: params[:id])
        render json: blog
    end

    def create
        blog = Blog.create!(blog_params)
        render json: blog,  status: :created
    end

    def update
        blog = Blog.find(id: params[:id])
        blog.update!(blog_params)
        render json: blog, status: :created
    end

    def destroy
        blog = Blog.find(params[:id])
        blog.destroy
        head :no_content
    end

    private

    def blog_params
        params.permit(:title, :content)
    end
end
