require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe 'ユーザー新規登録' do
    #it 'nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
      #expect(@user).to be_valid
    #end
    it 'nicknameが空では登録できない' do
      user = User.new(nickname: '', email: 'test@example', password: '000000', password_confirmation: '000000', last_name: '山田', first_name: '太郎', last_name_kana: 'ヤマダ', first_name_kana: 'タロウ' )
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'emailが空では登録できない' do
    end
  end
end

      #@user.nickname = ''
      #@user.valid?
      #expect(@user.errors.full_messages).to include ("Nickname can't be blank")
    end
    it 'emailが空では登録できない' do
      #@user.email = ''
      #@user.valid?
      #expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it 'passwordが空では登録できない' do
      #@user.password = ''
      #@user.valid?
      #expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it 'passwordとpassword_confirmationが不一致では登録できない' do
      #@user.password = '123456'
      #@user.password_confirmation = '1234567'
      #@user.valid?
      #expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    #it 'nicknameが7文字以上では登録できない' do
      #@user.nickname = 'aaaaaaa'
      #@user.valid?
      #expect(@user.errors.full_messages).to include("Nickname is too long (maximum is 6 characters)")
    #end
    it '重複したemailが存在する場合は登録できない' do
      #@user.save
      #another_user = FactoryBot.build(:user)
      #another_user.email = @user.email
      #another_user.valid?
      #expect(another_user.errors.full_messages).to include('Email has already been taken')
    end
    it 'emailは@を含まないと登録できない' do
      #@user.email = 'test.com'
      #@user.valid?
      #expect(@user.errors.full_messages).to include("Email is invalid")
    end
    it 'passwordが5文字以下では登録できない' do
      #@user.password = '00000'
      #@user.password_confirmation = '00000'
      #@user.valid?
      #expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
    it 'passwordが129文字以上では登録できない' do
      #@user.password = Faker::Internet.password(min_length: 129)
      #@user.password_confirmation = @user.password
      #@user.valid?
      #expect(@user.errors.full_messages).to include("Password is too long (maximum is 128 characters)")
    end
  end

end
