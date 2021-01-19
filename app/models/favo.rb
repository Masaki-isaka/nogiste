class Favo < ApplicationRecord
  belongs_to :image
  belongs_to :nogimasa
  validates_uniqueness_of :image_id, scope: :nogimasa_id
end
