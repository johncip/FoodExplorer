json.extract!(
  restaurant,
  *restaurant.attribute_names,
  *Restaurant::YELP_ATTRS
)

if current_user
  json.lists restaurant.lists.where(author: current_user).pluck(:title)

  dining = Dining.find_or_create_by(restaurant: restaurant,
                                    diner: current_user)

  if dining
    json.dining do
      json.id dining.id
      json.favorite dining.favorite?
      json.visited dining.visited?
      json.notes dining.notes
    end
  end
end
