class Project < ApplicationRecord
    belongs_to :building 
    belongs_to :client 
    belongs_to :employee 
    has_many :project_contacts 
    has_many :contacts, through: :project_contacts

    validates_presence_of :job_num
    
end
