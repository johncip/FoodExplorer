FoodEx.Collections.Lists = Backbone.Collection.extend(
  _.extend({}, FoodEx.Mixins.Indifferent, {
    url: 'api/lists',
    model: FoodEx.Models.List,
    comparator: 'ord'
  }));
