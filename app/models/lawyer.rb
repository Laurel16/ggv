class Lawyer < ApplicationRecord

  COMPETENCES = ["Droit du travail", "Droit des sociétés et F&A", "Droit commercial", "Immobilier", "Fiscalité", "Compliance", "Contentieux"]
  SECONDCOMPETENCES = ["Droit du travail", "Droit des sociétés et F&A", "Droit commercial", "Immobilier", "Fiscalité", "Compliance", "Contentieux"]
  THIRDCOMPETENCES = ["Droit du travail", "Droit des sociétés et F&A", "Droit commercial", "Immobilier", "Fiscalité", "Compliance", "Contentieux"]
  mount_uploader :picture, PhotoUploader
end
