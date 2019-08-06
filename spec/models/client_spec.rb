require 'rails_helper'

RSpec.describe Client, type: :model do

  let(:client) { build(:random_client) }
  
  describe "#client validations" do    
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:website) }
  end

  describe "#client associations" do 
    it { should have_many(:projects) }  
    it { should have_one(:address) }
  end

  describe "#client URL format" do 
    it { should allow_value("http://www.company.com").for(:website) } 
    it { should_not allow_value("dfs").for(:website) } 
    it { should_not allow_value("www.company.com").for(:website) } 
  end

  
  describe "ActiveRecord associations" do  
  end 
   
end

