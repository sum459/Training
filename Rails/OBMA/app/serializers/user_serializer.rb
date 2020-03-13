class UserSerializer < ActiveModel::Serializer
 # attributes *User.column_names

  def attributes(*args)
  	data = super
  	data[:id] = object.id
  	data[:name] = object.name
  	data[:books] = object.books.select(:title)
  	data[:reviews] =  ActiveModel::Serializer::CollectionSerializer.new(object.reviews, each_serializer: ReviewSerializer)
  	data
  end
  
end
