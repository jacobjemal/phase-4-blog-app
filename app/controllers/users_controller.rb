class UsersController < ApplicationController

    def index
        user = User.all
        render json: user, status: 200
    end

    def show
        currnet_user = User.find_by(id: params[:id])
        render json: currnet_user
    end

    def create
        user = User.create!(user_params)
        render json: user, satatus: :created
    end

    def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user, status: :created
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content
    end

    private

    def user_params
        params.permit(:name, :email, :password)
    end 
end