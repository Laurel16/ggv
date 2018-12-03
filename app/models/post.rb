class Post < ApplicationRecord

  SUBJECTS = [:"event", :"conference", :"media"]
  translates :title, :content, :category, :date, :place
  mount_uploader :illustration, PhotoUploader
end
