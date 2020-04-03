class Post < ApplicationRecord

 belongs_to :user

 mount_uploader :avatar, AvatarUploader
 serialize :avatar, JSON
 mount_uploader :video, VideoUploader 
 serialize :video, JSON 

end
