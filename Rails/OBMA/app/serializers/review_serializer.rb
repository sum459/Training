class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :book, :user

  # belongs_to :user
  # belongs_to :book

  def book
   object.book.title
  end

  def user
   object.user.name
  end

end
