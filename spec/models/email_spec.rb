require 'rails_helper'

RSpec.describe Email, type: :model do
  let(:email) { build(:random_email) }

  describe "#email validations" do    
    it { should validate_presence_of(:email_address) }
  end

  describe "#email associations" do  
    it { should belong_to(:emailable) }
  end 

  describe "#email format check" do    
    it { should be_valid('test@email.com') }
    it { should_not be_valid('sdflkjasd') }
    it { should_not be_valid('test@email') }
  end 
end
