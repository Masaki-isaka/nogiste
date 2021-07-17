class Account < ApplicationRecord
  belongs_to :user
  validates :age, presence: true
  validates :member, presence: true
  validates :song, presence: true  
end
