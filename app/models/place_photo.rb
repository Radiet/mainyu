class PlacePhoto < ActiveRecord::Base
  mount_uploader :image, PlacePhotoUploader

  belongs_to :place
end
