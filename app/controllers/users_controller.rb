class UsersController < ApplicationController

    def index
        user = User.all
        render json: user, status: 200
    end

    def show
        currnet_user = User.find(params[:id]) #session[:current_user])
        render json: currnet_user, serializer: UsersWithStuffSerializer
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end 

    def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user, status: :created
    end


    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {}, status: 200
        # head :no_content
    end

    private

    def user_params
        params.permit(:username, :email, :password)
    end 
end
