class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :update, :destroy]

    def index  
        @employees = Employee.all 
    end 

    def show   
    end 

    def new 
        @employee = Employee.new  
    end 

    def create    
    end 

    def edit 
    end 

    def update 
    end 

    def destroy  
        @employee.delete 
        redirect_to employees_path
    end 


    private 

    def find_employee 
        @employee = Employee.find(params[:id])
    end 

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :title, :department, :old_employee_id)
    end 
end
