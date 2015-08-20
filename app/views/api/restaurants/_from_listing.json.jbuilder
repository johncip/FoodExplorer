rest = listing.restaurant

json.extract!(rest, *rest.attribute_names)
json.yelp_id rest.yelp_id

json.favorite current_user.favorite?(rest)
json.visited current_user.visited?(rest)
json.ord listing.ord

json.listing do
  json.id listing.id
  json.ord listing.ord
  json.user_id listing.user_id
end
