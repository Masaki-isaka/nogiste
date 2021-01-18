class Like < ApplicationRecord
  belongs_to :nogipost, optional: true
  belongs_to :nogimasa
  validates_uniqueness_of :nogipost_id, scope: :nogimasa_id
end
