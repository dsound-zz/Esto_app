class Email < ApplicationRecord
    belongs_to :emailable, polymorphic: true
    
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
