class AddCompetences3ToLawyer < ActiveRecord::Migration[5.1]
  def change
    add_column :lawyers, :competences_3, :string
  end
end
