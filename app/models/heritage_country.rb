# class HeritageCountry < ApplicationRecord
#  include ActiveModel::Model
#  attr_accessor :name, :register_id, :explain, :country, :user
                                
#  with_options presence: true do
#    validates :name
#    validates :explain
#  end
                                              
#   validates :register_id, numericality: { other_than: 1 , message: "を選択してください"} 
#   validates :country_id, numericality: { other_than: 1 , message: "を選択してください"} 
#  def save
#   heritage =Heritage.create(country_id:country_id)
#   Country.create(:name, :register_id, :explain, :country_id)
#  end
# end
                