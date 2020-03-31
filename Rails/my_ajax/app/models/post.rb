class Post < ApplicationRecord

 mount_uploader :avatar, AvatarUploader
 serialize :avatar, JSON
 mount_uploader :video, VideoUploader 
 serialize :video, JSON 
end
