class EmailsController < ApplicationController
      before_action :find_email, only: [:show, :update, :destroy]

    def index  
        @emails = Email.all 
    end 

    def show   
    end 

    def new 
        @email = Email.new  
    end 

    def create    
    end 

    def edit 
    end 

    def update 
    end 

    def destroy  
        @email.delete 
        redirect_to emails_path
    end 


    private 

    def find_email 
        @email = Email.find(params[:id])
    end 

    def email_params
        params.require(:email).permit(:email_address, :email_type, :old_email_link_id, :old_email_intforeignid, :old_email_intid, :email_deleted)
    end 
end
