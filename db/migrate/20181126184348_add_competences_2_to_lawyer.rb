class AddCompetences2ToLawyer < ActiveRecord::Migration[5.1]
  def change
    add_column :lawyers, :competences_2, :string
  end
end

