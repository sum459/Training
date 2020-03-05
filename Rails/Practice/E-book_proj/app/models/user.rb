class User < ApplicationRecord


def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
    User.all
  end
end



end
