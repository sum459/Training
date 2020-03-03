# module FindRecentPurchase
#    def find_recent
#      where("created_at > ?", 5.days.ago)
#    end
#  end

 class EmailVal < ActiveModel::Validator
   def validate(record)
       unless record.email.match?(/^\w+\.?\w+@[a-z]+\.[a-z]+/)
          record.errors[:email] << 'Please enter Valid Email!'
       end
   end
 end





class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true
   # after_destroy :destroy_action
   #
   #  after_initialize do |user|
   #   puts "You have initialized an object!"
   #  end
   #
   #  after_find do |user|
   #    puts "You have found an object!"
   #  end
   #
   #  after_touch do |user|
   #    puts "You have touched an object"
   #  end
   #
   #
   #
   #  def destroy_action
   #   puts 'User destroyed'
   #  end


    has_many :reviews, dependent: :destroy
    has_many :purchases, -> { extending FindRecentPurchase }
    has_many :purchase_books, through: :purchases
    has_many :books, through: :purchase_books

    scope :cheap_books, -> {joins(:books).merge(Book.cheap)}


     validates_with EmailVal
     validate :ValContact

   #  after_create :check_permission
   #  before_validation :ensure_contact_is_valid
   #  before_create :ValContact
   #
   #   def ensure_contact_is_valid
   #      if contact.nil?
   #          self.contact = 'Enter Contact' unless email.blank?
   #      end
   #   end
   #
   #
   #
   #
   # def check_permission
   #   puts "Congractulations! A new User is created"
   # end




      def ValContact
        if self.contact.length!=10
        errors.add(:contact, 'Please enter right phone_no.')
        end
     end


end
