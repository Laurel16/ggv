class Lawyer < ApplicationRecord
COMPETENCES = [:"labour", :"corporate", :"commercial", :"real_estate", :"taxes", :"compliance", :"litigation" ]
translates :first_name, :last_name, :competences, :competences_details, :presentation, :languages, :bar, :course, :vCard, :pdf, :status, :competences_2, :competences_3, :picture, :picture_cache, :email, :phone, :adress
  mount_uploader :picture, PhotoUploader
end
