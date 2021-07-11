class Nogizaka < ApplicationRecord
  belongs_to :nogimasa
  validates :age, presence: true
  validates :member, presence: true
  validates :song, presence: true  
end
