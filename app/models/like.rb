class Like < ApplicationRecord
  belongs_to :nogipost, optional: true
  belongs_to :user
  validates_uniqueness_of :nogipost_id, scope: :user_id
end
