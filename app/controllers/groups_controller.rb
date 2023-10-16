class GroupsController < ApplicationController

    def index 
        groups = Group.all 
        render json: groups, status: :ok
    end

    def show
        render json: @group, status: :ok 
    end

    def create 
        new_group = Group.create!(group_params)
        render json: new_group, status: :ok
    end
    private

    def find_group
        @group = Group.find(params[:id])
    end

    def group_params 
        params.permit(:number)
    end
end
