class Post < ApplicationRecord

  SUBJECTS = [:"event", :"conference", :"media"]
  translates :title, :content, :category, :date, :place, :illustration
end
