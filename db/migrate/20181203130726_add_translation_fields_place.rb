class AddTranslationFieldsPlace < ActiveRecord::Migration[5.1]
  def change

    reversible do |dir|
      dir.up do
        Post.add_translation_fields! place: :string
      end
    end
  end
end
