class Heritage < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :register
  belongs_to :user
  belongs_to :nation
  has_many   :favorites
  has_many_attached :images
  
  with_options presence: true do
    validates :name
    validates :explain
    validates :images
   end
                               
  validates :register_id, numericality: { other_than: 1 , message: "を選択してください"} 
end
