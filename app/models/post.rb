class Post < ApplicationRecord
  belongs_to :nogimasa
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
end
