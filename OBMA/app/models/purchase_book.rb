class PurchaseBook < ApplicationRecord
  belongs_to :book
  belongs_to :purchase
  has_many :users, through: :purchases
end
