class CreatePostTranslations < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
      dir.up do
        Post.create_translation_table!({
          :title => :string,
          :category => :string,
          :content => :text,
          :illustration=> :string,
        }, {
          :migrate_data => true
        })
      end
    end
  end
end
