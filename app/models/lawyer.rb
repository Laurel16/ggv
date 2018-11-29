class Lawyer < ApplicationRecord

translates :first_name, :last_name, :competences, :competences_details, :presentation, :languages, :bar, :course, :phone, :mail, :vCard, :pdf, :address, :status, :competences_2, :competences_3
  mount_uploader :picture, PhotoUploader
end
