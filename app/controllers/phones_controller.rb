class PhonesController < ApplicationController
      before_action :find_phone, only: [:show, :update, :destroy]

    def index  
        @phones = Phone.all 
    end 

    def show   
    end 

    def new 
        @phone = Phone.new  
    end 

    def create    
    end 

    def edit 
    end 

    def update 
    end 

    def destroy  
        @phone.delete 
        redirect_to phones_path
    end 


    private 

    def find_phone 
        @phone = Phone.find(params[:id])
    end 

    def phone_params
        params.require(:phone).permit(:old_phone_id, :phone_type, :phone_country_code, :phone_area_code, 
        :phone_num, :phone_ext, :phone_initid, :phone_foreign_id)
    end 
end
