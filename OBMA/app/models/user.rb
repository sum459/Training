class User < ApplicationRecord
    validates :email, uniqueness: true
    has_many :reviews, dependent: :destroy
    has_many :purchases
    has_many :purchase_books, through: :purchases
    has_many :books, through: :purchases
end
