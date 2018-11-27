class ChangeLangagesToLanguages < ActiveRecord::Migration[5.1]
  def change
    rename_column :lawyers, :langages, :languages
  end

end
