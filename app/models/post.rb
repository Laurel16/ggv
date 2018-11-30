class Post < ApplicationRecord
  translates :title, :content, :category, :illustration
  mount_uploader :illustration, PhotoUploader
end
