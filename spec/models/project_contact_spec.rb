require 'rails_helper'

RSpec.describe ProjectContact, type: :model do
  let(:project_contact) {build(:project_contact)}

  describe '#project validations' do    
    it { should validate_presence_of(:project_contact) }
  end 

  describe '#project associations' do  
    it { should belong_to(:project) } 
    it { should belong_to(:client) } 
  end 
  
end
