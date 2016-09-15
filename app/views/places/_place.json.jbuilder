json.extract! place, :id, :name, :lat, :lng, :location, :description, :rating, :entry_price, :created_at, :updated_at
json.url place_url(place, format: :json)