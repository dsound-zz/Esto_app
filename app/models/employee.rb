class Employee < ApplicationRecord
    has_many :projects 
    has_one :address, as: :addressable, dependent: :destroy 
    has_one :email, as: :emailable, dependent: :destroy
    has_one :phone, as: :phoneable, dependent: :destroy 

    validates_presence_of :first_name, :last_name 
end
