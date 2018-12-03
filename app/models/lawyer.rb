class Lawyer < ApplicationRecord
COMPETENCES = [:"labour", :"corporate", :"commercial", :"real_estate", :"taxes", :"compliance", :"litigation" ]
translates :competences, :competences_details, :presentation, :languages, :bar, :course, :vCard, :pdf, :status, :competences_2, :competences_3
  mount_uploader :picture, PhotoUploader
end
