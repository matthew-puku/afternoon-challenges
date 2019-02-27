require 'geocoder'

Geocoder.configure(
    :timeout => 3,
    :units => :km
)

def get_coordinates(place)
    coordinates = []
    results = Geocoder.search(place)
    coordinates << results[0].data["lat"]
    coordinates << results[0].data["lon"]
    return coordinates
end

bris = get_coordinates("Brisbane")
puts bris
nyc = get_coordinates("New York")
puts nyc