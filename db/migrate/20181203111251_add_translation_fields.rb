class AddTranslationFields < ActiveRecord::Migration[5.1]
  def change

    reversible do |dir|
      dir.up do
        Post.add_translation_fields! date: :datetime
      end
    end
  end
end
