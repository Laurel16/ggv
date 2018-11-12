class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         def self.langages_options
          {"English" => "en", "Français" =>"fr", "German" =>"de"

          }
        end

end
