class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :url


 def url
 	user_url(object)
 end
 
end
