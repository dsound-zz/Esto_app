class ContactsController < ApplicationController
    before_action :find_contact, only: [:show, :update, :destroy]

    def index  
        @contacts = Contact.all 
    end 

    def show   
    end 

    def new 
        @contact = Contact.new  
    end 

    def create    
    end 

    def edit 
    end 

    def update 
    end 

    def destroy  
        @contact.delete 
        redirect_to contacts_path
    end 


    private 

    def find_contact 
        @contact = Contact.find(params[:id])
    end 

    def contact_params
        params.require(:contact).permit(:first_name, :last_name, :title, :department, :sec_terr, :old_contact_id, :old_address_id, 
        :old_compnay_id, :old_legacy_id)
    end 

end
