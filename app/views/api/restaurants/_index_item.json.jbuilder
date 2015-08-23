json.extract!(restaurant, *restaurant.attribute_names)

json.favorite restaurant.user_favorite?(current_user)
json.visited restaurant.user_visited?(current_user)
