class Image < ApplicationRecord
  belongs_to :post
  has_many :favos
  has_many :favoed_nogimasa, through: :favos, source: :nogimasa
end
