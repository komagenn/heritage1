require 'rails_helper'

RSpec.describe Heritage, type: :model do
  
  before do
   user = FactoryBot.create(:user)
   @heritage = FactoryBot.build(:heritage)
  end

    context "投稿できる場合" do
      it "nameとregister_idとexplainが存在すれば登録できる" do
         expect(@heritage).to be_valid
      end
    end
                                 
                                  
    describe '投稿できない場合' do
     it 'nameが空では登録できない' do
       @heritage.name = ''
       @heritage.valid?
       expect(@heritage.errors.full_messages).to include "世界遺産名を入力してください"
     end
     it 'register_idが空では登録できない' do
       @heritage.register_id = ''
       @heritage.valid?
       expect(@heritage.errors.full_messages).to include "登録年を選択してください"
     end
     it 'explainが空では登録できない' do
       @heritage.explain = ''
       @heritage.valid?
       expect(@heritage.errors.full_messages).to include "説明を入力してください"
     end
    end
                                
end


