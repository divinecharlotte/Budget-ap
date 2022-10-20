require 'rails_helper'

RSpec.describe Group, type: :model do
  before :each do
    @user = User.create(name: 'Divine', password: 'password', email: 'divine@gmail.com')
    @group = Group.create(name: 'shool group', icon: 'https://png.pngitem.com/pimgs/s/292-2923379_undergraduate-education-logo-for-education-png-transparent-png.png',
                          user_id: @user.id)
  end

  describe 'Validations' do
    it 'is not valid without a name' do
      @group.name = nil
      expect(@group).to_not be_valid
    end

    it 'is not valid without an icon' do
      @group.icon = ''
      expect(@group).to_not be_valid
    end
  end
end
