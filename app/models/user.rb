class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :heritages
  has_many :country
  has_many :favorites
  has_many :heritages, through: :favorites

  validates :nick_name, presence: true

  def liked_by?(heritage_id)
    favorites.where(heritage_id: heritage_id).exists?
  end
end
