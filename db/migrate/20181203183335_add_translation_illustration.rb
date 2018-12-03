class AddTranslationIllustration < ActiveRecord::Migration[5.1]
  def change

    reversible do |dir|
      dir.up do
        Post.add_translation_fields! illustration_cache: :string
      end
    end
  end
end
