class AddressesController < ApplicationController
      before_action :find_address, only: [:show, :update, :destroy]

    def index  
        @addresses = Address.all 
    end 

    def show   
    end 

    def new 
        @address = Address.new  
    end 

    def create    
    end 

    def edit 
    end 

    def update 
    end 

    def destroy  
        @address.delete 
        redirect_to addresses_path
    end 


    private 

    def find_address 
        @address = Address.find(params[:id])
    end 

    def address_params
        params.require(:address).permit(:old_address_id, :line_1, :line_2, :city, :state, :zipcode, :country)
    end 
    
end
