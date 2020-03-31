class Post < ApplicationRecord

 mount_uploader :avatar, AvatarUploader
 serialize :avatar, JSON

end
