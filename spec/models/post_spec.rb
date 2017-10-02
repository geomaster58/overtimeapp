require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before do
      @user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow", phone: "4322386131")
      @post = Post.create(date: Date.today, rationale: "Anything", user_id: @user.id, overtime_request: 2.5)
    end
    it 'can be created' do
      expect(@post).to be_valid
    end
    it "cannot be created without a date and a rationale and overtime" do
      @post.date = nil
      @post.rationale = nil
      @post.user_id = nil
      @post.overtime_request = nil
      expect(@post).to_not be_valid
    end
    it 'has an overtime_request greater than 0.0' do
      @post.overtime_request = 0.0
      expect(@post).to_not be_valid
    end
  end
end

