class Nogipost < ApplicationRecord
  belongs_to :nogimasa
  has_many :likes, dependent: :destroy
  has_many :liked_nogimasas, through: :likes, source: :nogimasa
end
