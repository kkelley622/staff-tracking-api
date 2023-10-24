class SessionsController < ApplicationController

    before_action :logged_in, only: [:create]
    skip_before_action :authorize, only: [:create]
    
    def create 
        user = User.find_by_username(params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :ok
        else
            render json: { errors: ["Username or Password Didn't Match"]}, status: :unprocessable_entity
        end 
    end 

    def destroy 
        session.delete :user_id
    end

end
