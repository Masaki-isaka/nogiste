class Image < ApplicationRecord
  belongs_to :post
  has_many :favs
  has_many :faved_nogimasa, through: :favs, source: :nogimasa
  mount_uploader :file, FileUploader
end
