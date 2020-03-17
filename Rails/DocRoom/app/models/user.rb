class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable#, :confirmable

  has_many :docs

  validates_presence_of :first_name, :last_name, :user_name, :contact
  validates_uniqueness_of :user_name, :contact
  
end
