class Flavor < ApplicationRecord
   #association
   belongs_to :user
   mount_uploader :image, ImageUploader
end
