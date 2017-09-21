require 'rails_helper'

RSpec.describe User, type: :model do

  before do
     @user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "JJ", last_name: "keeney" )
    end
  describe "creation" do
    
    it "can be created" do
      expect(@user).to be_valid
    end

    it "can not be created without first name and last name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end

  describe "custom name method" do
    it "has a full name method combining first and last name" do
      expect(@user.full_name).to eq("KEENEY, JJ")
    end
  end
end
