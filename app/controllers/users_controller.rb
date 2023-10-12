class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users, status: :ok 
    end

    # def me 
    #     me = @user 
    #     render json: 
    # end
    def create 
        user = User.create!(user_params)
        render json: user, status: :ok
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.permit(:username, :password, :name)
    end
end
