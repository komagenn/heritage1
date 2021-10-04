class Heritage < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :register
  belongs_to :country
  belongs_to :user
  has_many_attached :images
  
  with_options presence: true do
    validates :name
    validates :explain
  end

  validates :register_id, numericality: { other_than: 1 , message: "を選択してください"} 
  validates :country_id, numericality: { other_than: 1 , message: "を選択してください"} 
end
