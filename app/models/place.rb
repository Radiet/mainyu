class Place < ActiveRecord::Base
  acts_as_taggable

  has_many :photos, {
    dependent: :destroy,
    foreign_key: 'place_id',
    class_name: 'PlacePhoto'
  }

  def cover_photo
    photos.first.try(:image) || "placeholder_place.jpg"
  end

end
