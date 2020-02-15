class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  #validates :category, exclusion: { in: %w(Adventure Romance Fantasy Inspiration),
  #message: "%{value} is not a valid " }
  #validates :title, length: {maximum: 20}
  validates :price, numericality: {only_integer: true}
  has_many :reviews, dependent: :destroy
  has_many :purchase_books
  has_many :purchases, through: :purchase_books
  has_many :users, through: :purchases
  
end
