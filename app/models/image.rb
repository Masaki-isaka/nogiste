class Image < ApplicationRecord
  belongs_to :post
  has_many :favos
  has_many :favoed_nogimasa, through: :favos, source: :user
  def imgix_url
    "https://nogiste.imgix.net#{URI.parse(file).path}"
  end
end
