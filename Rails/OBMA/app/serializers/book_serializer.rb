class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :user, :review

 # has_many :reviews
 # has_many :users
  
  def user
   object.users.select(:name)
  end

  def review
   object.reviews
  end

end
