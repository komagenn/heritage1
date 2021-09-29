require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
 end
  describe "ユーザー新規登録" do
    context "新規登録できるとき" do
     it "nick_nameとemailとpasswordが存在すれば登録できる" do
       expect(@user).to be_valid
     end
 
     it "passwordとpassword_confirmationが6文字以上であれば登録できる" do
       @user.password = '05omuraisu'
       @user.password_confirmation = '05omuraisu'
       expect(@user).to be_valid
     end
    end
  end
  describe 'ユーザー新規登録' do
    it 'nick_nameが空では登録できない' do
      @user.nick_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("ニックネームを入力してください")
    end
    it 'emailが空では登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Eメールを入力してください")
    end
    it "英語のみ・数字のみ・全角文字を含むpasswordでは登録できない" do
      @user.password = 'aaaaaa','111111','111AAA'
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
    end
    it "passwordとpassword_confirmationが不一致だと登録できない" do
      @user.password = '05omuraisu'
      @user.password_confirmation = '05OMuraisU'
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
    end
  end
end
