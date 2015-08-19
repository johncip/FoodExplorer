json.model do
  json.extract!(listing, *listing.attribute_names)
end

json.contributor do
  json.extract!(listing.contributor, :username)
end

json.restaurant do
  json.partial! partial: 'api/restaurants/index_item',
                locals: { restaurant: listing.restaurant }
end
