class ClientsController < ApplicationController
     before_action :find_client, only: [:show, :update, :destroy]

    def index  
        @clients = Client.all 
    end 

    def show   
    end 

    def new 
        @client = Client.new  
    end 

    def create    
    end 

    def edit 
    end 

    def update 
    end 

    def destroy  
        @client.delete 
        redirect_to clients_path
    end 


    private 

    def find_client 
        @client = Client.find(params[:id])
    end 

    def client_params
        params.require(:client).permit(:name, :website, :status, :deleted, :library_dir, :sec_terr, :old_company_id, :old_address_id, :old_legacy_id)
    end  
end
