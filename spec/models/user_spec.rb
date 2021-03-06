require 'rails_helper'

RSpec.describe User, type: :model do

  before do
     @user = FactoryGirl.create(:user)
    end
  describe "creation" do
    
    it "can be created" do
      expect(@user).to be_valid
    end

    it "can not be created without first name and last name" do
      @user.first_name = nil
      @user.last_name = nil
      @user.phone = nil
      expect(@user).to_not be_valid
    end

    it 'requires the phone attr to only contain integers' do
      @user.phone = 'mygreatstr'
      expect(@user).to_not be_valid
    end

     it 'requires the phone attr to only have 10 chars' do
      @user.phone = '12345678901'
      expect(@user).to_not be_valid
    end
  end

  describe "custom name method" do
    it "has a full name method combining first and last name" do
      expect(@user.full_name).to eq("SNOW, JON")
    end
  end
end
