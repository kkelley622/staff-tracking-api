class AccountsController < ApplicationController
    def index 
        accounts = Account.all
        render json: accounts, status: :ok;
    end

    def show 
        render json: @account, status: :ok;
    end

    def create 
        new_group = Group.create!(group_params)
        render json: new_group, status: :ok;
    end

    private

    def find_account 
        @account = Account.find(params[:id])
    end

    def group_params
        params.permit(:name, :group_id)
    end
end
