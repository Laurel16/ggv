class AddFieldsToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :title, :string
    add_column :posts, :category, :string
    add_column :posts, :content, :text
    add_column :posts, :illustration, :string
  end
end
