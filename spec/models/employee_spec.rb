require 'rails_helper'

RSpec.describe Employee, type: :model do
  
  let(:employee) { build(:employee) }

  describe '#employee validations' do 
    it { should validate_presence_of(:first_name) } 
    it { should validate_presence_of(:last_name) }  
  end 

  describe '#employee associations' do 
    it { should have_many(:projects) }
    it { should have_one(:phone) }
    it { should have_one(:email) }
    it { should have_one(:address) }
    it { should have_many(:searches)}
  end
end
