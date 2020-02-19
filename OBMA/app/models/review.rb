class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user
#validates_uniqueness_of :user_id, scope: :book_id
#  scope :top, -> { where ("rating > 4.5") }
#  default_scope { where ('rating > 3')}
end
