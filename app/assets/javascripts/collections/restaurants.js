FoodEx.Collections.Restaurants = Backbone.Collection.extend(
  _.extend({}, FoodEx.Mixins.Indifferent, {
    url: 'api/restaurants',
    model: FoodEx.Models.Restaurant,
    comparator: 'ord'
  }));
