require 'rails_helper'

RSpec.describe Project, type: :model do
 
  let(:project) { build(:project) }

  describe '#project validations' do    
    it { should validate_presence_of(:job_num) }
  end 

  describe '#project associations' do  
    it { should belong_to(:client) } 
    it { should have_many(:contacts).through(:project_contacts) } 
    it { should belong_to(:employee) }
    it { should belong_to(:building) }
  end 
end


