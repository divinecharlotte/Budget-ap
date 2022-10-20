require 'rails_helper'
RSpec.describe 'groups/new', type: :feature do
  before :each do
    @user = User.create(name: 'Divine Charlotte', email: "#{DateTime.now.to_i}@gmail.com", password: 'password',
                        password_confirmation: 'password')
    @group = @user.groups.create(name: 'group 1', icon: 'http://localhost:3000/i.png',
                                 user_id: @user.id)

    visit(new_user_session_path)
    fill_in 'user[email]', with: @user.email
    fill_in 'user[password]', with: @user.password
    click_button 'Log in'
  end

  describe "Visit groups' index page" do
    it 'should have group header' do
      visit(groups_path)
      expect(page).to have_text('CATEGORIES')
    end

    it 'should have group name' do
      visit(new_group_path)
      expect(page).to have_text('NEW CATEGORIES')
    end

    it 'should have group icon' do
      visit(new_group_path)
      expect(page).to have_text('Choose category icon')
    end

    it 'should have new page link' do
      visit(new_group_path)
      expect(page).to have_selector(:link_or_button, 'Back to categories', exact: true)
    end

    it 'redirect to transactions page' do
      visit(new_group_path)
      expect(page).to have_selector(:link_or_button, 'Save Category', exact: true)
    end

    it 'redirect to add new group' do
      visit(groups_path)
      click_link('Add a New category', exact: true)
      expect(page).to have_current_path(new_group_path)
    end
  end
end
