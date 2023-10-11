class AccountsController < ApplicationController
    def index 
        accounts = Account.all
        render json: accounts, status: :ok;
    end
end
