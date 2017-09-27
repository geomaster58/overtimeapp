require "rails_helper"

describe 'navigate' do
   before do
      @post = FactoryGirl.create(:post)
      visit edit_post_path(@post)
    end
    
  before do 
    @admin_user = FactoryGirl.create(:admin_user)
    visit edit_post_path(@post)
  end
  describe 'edit' do
   

    it 'has a status that can be edited on the form by an admin' do
      choose("Approved")
      click_on("Save")

      expect(@post.reload.status).to eq('approved')
    end

    it 'cannot be edited by a non admin' do
      logout(:user)
      user = FactoryGirl.create(:user)
      login_as(user, :scope => :user)

      visit edit_post_path(@post)

      expect(page).to_not have_content('approved')
    end
  end
end