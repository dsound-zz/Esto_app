class ProjectsController < ApplicationController
     before_action :find_project, only: [:show, :update, :destroy]

    def index  
        @projects = Project.all 
    end 

    def show   
    end 

    def new 
        @project = Project.new  
    end 

    def create    
    end 

    def edit 
    end 

    def update 
    end 

    def destroy  
        @project.delete 
        redirect_to projects_path
    end 


    private 

    def find_project 
        @project = Project.find(params[:id])
    end 

    def project_params
        params.require(:project).permit(:PQ_workshieet_1, :PQ_worksheet_1_note, :invoice, :invoice_note,
        :scout_image_sent_date, :prelims_sent, :prelims_sent_date, :final_delivered, 
        :finals_delivered_date, :shoot_sheet_recv, :shoot_sheet_recv, :shoot_sheet_recv_date, 
        :image_order, :image_order_notes, :participant_info_name, :participant_info_notes, :other_notes, :old_project_id, :old_contact_id, 
        :old_company_id, :old_employee_id, :old_created_by_id, :old_additionalusage, :old_secterr, :old_legacy_id, :job_num, :project_type, 
        :old_final_date, :status, :stage, :client_id, :contact_id, :emplyoess_id, :building_id)
    end 
end
