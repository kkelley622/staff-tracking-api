class StaffsController < ApplicationController
    def index 
        staffs = Staff.all
        render json: staffs, status: :ok;
    end

    def create 
        staff = Staff.create!(staff_params)
        render json: staff, status: :ok
    end

    def destroy 
        @staff.destroy 
        render json: @staff, status: :ok 
    end
end

private

def find_staff 
    @staff = Staff.find(params[:id])
end

def staff_params
    params.permit(:name, :group_id)
end
