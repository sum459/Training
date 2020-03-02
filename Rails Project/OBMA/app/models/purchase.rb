class Purchase < ApplicationRecord
  belongs_to :user
  has_many :purchase_books, -> { extending FindRecentPurchase }
  has_many :books, through: :purchase_books
end
