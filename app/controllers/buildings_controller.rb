class BuildingsController < ApplicationController
      before_action :find_building, only: [:show, :update, :destroy]

    def index  
        @buildings = Building.all 
    end 

    def show   
    end 

    def new 
        @building = Building.new  
    end 

    def create    
    end 

    def edit 
    end 

    def update 
    end 

    def destroy  
        @building.delete 
        redirect_to buildings_path
    end 


    private 

    def find_building 
        @building = Building.find(params[:id])
    end 

    def building_params
        params.require(:building).permit(:description, :location, :architect)
    end 
end
