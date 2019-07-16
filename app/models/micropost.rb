class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: :true, length: { maximum: 255 }
  has_many :reverses_of_favoritings, class_name: "Favorite", foreign_key: "micropost_id"
  has_many :favoritings, through: :favorites, source: :user
end
