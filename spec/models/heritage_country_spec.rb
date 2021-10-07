# require 'rails_helper'

# RSpec.describe HeritageCountry, type: :model do
#   before do
#     @heritage_country = FactoryBot.build(:heritage_country)
#   end
#   context "投稿できる場合" do
#     it "nameとregister_idととexplainが存在すれば登録できる" do
#        expect(@heritage_country).to be_valid
#     end
#   end
 
  
#   context '投稿できない場合' do
#     it 'nameが空では登録できない' do
#       @heritage_country.name = ''
#       @heritage_country.valid?
#       expect(@heritage_country.errors.full_messages).to include "世界遺産名を入力してください"
#     end
#     it 'register_idが空では登録できない' do
#       @heritage_country.register_id = ''
#       @heritage_country.valid?
#       expect(@heritage_country.errors.full_messages).to include "登録年を選択してください"
#     end
#     it 'explainが空では登録できない' do
#       @heritage_country.explain = ''
#       @heritage_country.valid?
#       expect(@heritage_country.errors.full_messages).to include "説明を入力してください"
#     end
#   end
# end
