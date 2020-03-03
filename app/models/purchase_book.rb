class PurchaseBook < ApplicationRecord
  belongs_to :book
  belongs_to :purchase
  has_many :users, through: :purchases
  scope :created_before, ->(time) { where("created_at < ?", time) if time.present? }

end
