class Nogimasa < ApplicationRecord
  has_many :nogiposts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_nogiposts, through: :likes, source: :nogipost
  has_many :images, dependent: :destroy
  has_many :favs, dependent: :destroy
  has_many :faved_images, through: :favs, source: :image
  has_many :posts
  has_one :nogizaka

  def already_liked?(nogipost)
    self.likes.exists?(nogipost_id: nogipost.id)
  end

  def already_faved?(image)
    self.favs.exists?(image_id: image.id)
  end
  
  
    validates :username, presence: true
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable
  #attr_accessible :email, :password, :password_confirmation, :remember_me, :username
end
