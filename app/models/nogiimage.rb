class Nogiimage < ApplicationRecord
  belongs_to :nogimasa
  
  mount_uploaders :img, ImgUploader
end
