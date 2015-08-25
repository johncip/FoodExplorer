json.extract!(
  restaurant,
  *restaurant.attribute_names,
  *Restaurant::YELP_ATTRS
)

if current_user
  json.lists restaurant.lists.where(author: current_user).pluck(:title)
  json.favorite restaurant.user_favorite?(current_user)
  json.visited restaurant.user_visited?(current_user)
end
