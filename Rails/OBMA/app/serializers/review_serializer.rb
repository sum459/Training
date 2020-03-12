class ReviewSerializer < ActiveModel::Serializer
  attributes :book_id, :user_id, :rating

  belongs_to :user
  belongs_to :book

end
