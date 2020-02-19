class Book < ApplicationRecord
  #validates :title, presence: true
  #validates :author, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  #validates :category, inclusion: { in: %w(Adventure Romance Fantasy Inspiration),
  #message: "%{value} is not a valid " }
  #validates :title, length: {maximum: 10, too_long: "%{count} character is max allow"}
  #validates :price, numericality: {only_integer: true}
  #validates :price, presence: true,numericality: {greater_than_or_equal_to: 300 , message: "must be greter or equal to 300"}
  #enum category: [:available, :unavailable]

  has_many :reviews, dependent: :destroy
  has_many :purchase_books
  has_many :purchases, through: :purchase_books
  has_many :users, through: :purchases

  #scope :Cheap, -> { where ('price < 800') }
  #scope :Costly, -> { where ('price >= 800') }

     #validates :price,presence: true, if: -> { price > 300 }
     #validates :price,presence: true, unless: -> { price.blank?}

  #def isvalid
  # if self.price == 300
  #    return true
  #  else
  #    return false
  #  end
  #end

end
