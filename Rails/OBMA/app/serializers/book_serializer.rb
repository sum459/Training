class BookSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :reviews
  has_many :users
  
end
