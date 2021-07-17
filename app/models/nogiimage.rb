class Nogiimage < ApplicationRecord
  belongs_to :user
  
  mount_uploaders :img, ImgUploader
end
