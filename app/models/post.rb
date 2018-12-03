class Post < ApplicationRecord

  SUBJECTS = [:"event", :"conference", :"media"]
  translates :title, :content, :category, :date, :place, :illustration, :illustration_cache
  mount_uploader :illustration, PhotoUploader
end
