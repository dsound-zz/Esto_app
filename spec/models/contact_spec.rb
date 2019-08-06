require 'rails_helper'

RSpec.describe Contact, type: :model do 
  
  let(:contact) { build(:random_contact) }

  describe "#contact validations" do    
    it { expect(contact).to validate_presence_of(:first_name) }
    it { expect(contact).to validate_presence_of(:last_name) }
  end

  describe "#contact associations" do  
    it { should have_many(:projects).through(:project_contacts) }
    it { should have_one{:email} }
    it { should have_one{:phone} }
  end 


   
end
