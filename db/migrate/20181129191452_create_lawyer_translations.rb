class CreateLawyerTranslations < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        Lawyer.create_translation_table!({
          :first_name => :string,
          :last_name => :string,
          :competences => :string,
          :competences_details => :string,
          :presentation => :string,
          :picture => :string,
          :languages => :string,
          :bar => :string,
          :course => :string,
          :phone => :string,
          :mail => :string,
          :vCard => :string,
          :pdf => :string,
          :address => :string,
          :status => :string,
          :picture_cache => :string,
          :competences_2 => :string,
          :competences_3 => :string
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Lawyer.drop_translation_table! :migrate_data => true
      end
    end
  end
end
