class Post < ApplicationRecord
mount_uploader :illustration, PhotoUploader
  SUBJECTS = [:"event", :"conference", :"media"]
  translates :title, :content, :category, :date, :place, :illustation, :illustration_cache

end
