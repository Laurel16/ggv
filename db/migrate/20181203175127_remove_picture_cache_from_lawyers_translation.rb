class RemovePictureCacheFromLawyersTranslation < ActiveRecord::Migration[5.1]
  def change
    def change
        remove_column :lawyer_translations, :picture_cache
      end
  end
end
