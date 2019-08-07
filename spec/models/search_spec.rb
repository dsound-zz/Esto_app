require 'rails_helper'

RSpec.describe Search, type: :model do
  let(:search)  { build(:search)  }

  it "checks association for #search" do   
    it { should belong_to(:employee)}
  end 
end
