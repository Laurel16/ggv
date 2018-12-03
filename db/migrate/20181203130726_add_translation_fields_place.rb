class AddTranslationFieldsPlace < ActiveRecord::Migration[5.1]
  def change

    reversible do |dir|
      dir.up do
        Post.add_translation_fields! place: :string
      end

      dir.down do
        remove_column :post_translations, :place
      end
    end
  end
end
