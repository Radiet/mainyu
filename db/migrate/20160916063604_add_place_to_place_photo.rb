class AddPlaceToPlacePhoto < ActiveRecord::Migration
  def change
    add_reference :place_photos, :place, index: true, foreign_key: true
  end
end
