require 'rails_helper'

RSpec.describe Address, type: :model do
   let(:address) { build(:random_address) }

  describe "#address validations" do    
    it { should validate_presence_of(:line_1) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:zipcode) }
    it { should validate_presence_of(:country) }
  end

  describe "#address associations" do  
    it { should belong_to(:addressable) }
  end 
end
