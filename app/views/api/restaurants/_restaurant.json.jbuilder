json.extract!(
  restaurant,
  *restaurant.attribute_names,
  *Restaurant::YELP_ATTRS
)

if current_user
  json.lists restaurant.lists.where(author: current_user).pluck(:title)
  dining = restaurant.dinings.find_by(diner: current_user)

  if dining
    json.favorite dining.favorite?
    json.visited dining.visited?
    json.notes dining.notes
  end
end
