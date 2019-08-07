class SearchesController < ApplicationController
    before_action :search_params, only: [:index, :show, :new, :create]

    def index 
        @searches = Search.all  
    end

    def new 

    end 
    
    def create 

    end

    private 

    def search_params
        params.permit(:employee, :employee_id)
    end  

end
