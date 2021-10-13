class Favorite < ApplicationRecord
   belongs_to :heritage
   belongs_to :user
                
   validates :user_id, presence: true
   validates :heritage_id, presence: true
   validates_uniqueness_of :heritage_id, scope: :user_id
                
  def favorite_method(heritage, user)
   Favorite.find_by(heritage_id: heritage.id)
  end
                


  
 
  
end
