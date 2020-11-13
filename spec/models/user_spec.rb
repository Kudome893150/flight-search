require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録できる場合' do
    it "全て入力されている場合" do
    expect(@user).to be_valid
    end
  end

  describe '新規登録できない場合' do
    it "nicknameが空の場合" do
      @user.nickname = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it "first_nameが空の場合" do
      @user.first_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("First name can't be blank", "First name is invalid")
    end

    it "last_nameが空の場合" do
      @user.last_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name can't be blank", "Last name is invalid")      
    end

    it "first_nameとlast_nameが数字のみの場合" do
      @user.first_name = "1111"
      @user.last_name = "2222"
      @user.valid?
      expect(@user.errors.full_messages).to include("First name is invalid", "Last name is invalid")      
    end

    it "emailが空の場合" do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it "emailに(@)が含まれていない場合" do
      @user.email = "testtest.com"
      @user.valid?
      expect(@user.errors.full_messages).to include("Email is invalid")
    end

    it "passwordが空の場合" do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank", "Password confirmation doesn't match Password")
    end

    it "passwordが5桁の場合" do
      @user.password = "11111"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password", "Password is too short (minimum is 6 characters)")
    end

    it "passwordが全角の場合" do
      @user.password = "００００００"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "passwordが数字のみの場合" do
      @user.password = "111111"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "passwordが 英語のみの場合" do
      @user.password = "aaaaaa"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

  end
end
