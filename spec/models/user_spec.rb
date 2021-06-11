require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    before do
      @user = User.create(
        email: "test@gmail.com",
        password: "123456",
        password_confirmation: "123456",
        first_name: "Lucas",
        last_name: "brandao",
        username: "brandaoplaster"
      )
    end

    it 'should be able to be create if valid' do
      expect(@user).to be_valid
    end

    it 'should have a default role of student' do
      expect(@user.role).to eq('student')
    end

    describe 'validations' do
      it 'should not be valid without first name' do
        @user.first_name = nil
        expect(@user).to_not be_valid
      end

      it 'should not be valid without a last name' do
        @user.last_name = nil
        expect(@user).to_not be_valid
      end

      it 'should not be valid without a username' do
        @user.username = nil
        expect(@user).to_not be_valid
      end

      it 'should ensure that all username are unique' do
        duplicate_username_user = User.create(
          email: "test2@gmail.com",
          password: "123456",
          password_confirmation: "123456",
          first_name: "Lucas",
          last_name: "brandao",
          username: "brandaoplaster"
        )
        expect(duplicate_username_user).to_not be_valid
      end

      it 'should ensure that username do not allow special characters' do
        @user.username = "*#*(@!"
        expect(@user).to_not be_valid
      end
    end
  end
end
