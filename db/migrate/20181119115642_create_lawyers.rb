class CreateLawyers < ActiveRecord::Migration[5.1]
  def change
    create_table :lawyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :status
      t.string :competences
      t.string :competences_details
      t.string :presentation
      t.string :picture
      t.string :langages
      t.string :bar
      t.string :course
      t.string :address
      t.string :phone
      t.string :mail
      t.string :vCard
      t.string :pdf

      t.timestamps
    end
  end
end
