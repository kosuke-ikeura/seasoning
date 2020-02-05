class Flavor < ApplicationRecord
   #association
   belongs_to :user
   mount_uploader :image, ImageUploader
   
   def self.search(search)
      return Flavor.all unless search
      Flavor.where(['name LIKE ?', "%#{search}%"]).where(id:1..25).limit(10)
   end
end
