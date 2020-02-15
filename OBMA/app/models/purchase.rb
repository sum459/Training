class Purchase < ApplicationRecord
  belongs_to :user
  has_many :purchase_books
  has_many :books, through: :purchase_books
end
