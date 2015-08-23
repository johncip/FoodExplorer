rest = listing.restaurant

json.extract!(rest, *rest.attribute_names)

json.favorite rest.user_favorite?(current_user)
json.visited rest.user_visited?(current_user)

json.ord listing.ord

json.listing do
  json.id listing.id
  json.ord listing.ord
  json.user_id listing.user_id
end
