class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users, status: :ok 
    end

    private

    def find_user
        @user = User.find(params[:id])
    end
end
