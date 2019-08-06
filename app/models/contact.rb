class Contact < ApplicationRecord
    has_many :project_contacts
    has_many :projects, through: :contacts
    has_one :email, as: :emailable, dependent: :destroy 
    has_one :phone, as: :phonable, dependent: :destroy
    
    validates_presence_of :first_name, :last_name

end
