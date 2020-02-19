module FindRecentPurchase
  def find_recent
    where("created_at > ?", 5.days.ago)
  end
end

class EmailVal < ActiveModel::Validator
  def validate(record)
      unless record.email.match?(/^\w+\.?\w+@[a-z]+\.[a-z]+/)
         record.errors[:email] << 'Please enter Valid Email!'
      end
  end
end





class User < ApplicationRecord

    #validates :email, uniqueness: true
    before_save :check_permission
    has_many :reviews, dependent: :destroy
    has_many :purchases, -> { extending FindRecentPurchase }
    has_many :purchase_books, through: :purchases
    has_many :books, through: :purchase_books


    #  validates_with EmailVal
    #  validate :ValContact

   def check_permission
     return false
   end




     def ValContact
       if contact.length!=10
       errors.add(:contact, 'Please enter right phone_no.')
     end
   end


end
