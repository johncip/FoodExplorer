json.extract!(restaurant, *restaurant.attribute_names)

json.favorite current_user.favorite?(restaurant)
json.visited current_user.visited?(restaurant)

json.foo listings
