class UserSerializer < ActiveModel::Serializer
 # attributes :id

  def attributes(*args)
  	data = super
  	data[:id] = object.id
  	data[:name] = object.name
  	data[:books] = object.books.select(:title)
  	data
  end
  


end
