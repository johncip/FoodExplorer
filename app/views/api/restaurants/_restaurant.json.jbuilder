json.extract!(
  restaurant,
  *restaurant.attribute_names,
  *Restaurant::YELP_ATTRS
)
