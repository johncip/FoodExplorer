FoodEx.Collections.Restaurants = Backbone.Collection.extend ({
  url: 'api/restaurants',
  model: FoodEx.Models.Restaurant,

  getOrFetch: function (id) {
    var rest = this.get(id),
      rests = this;
    if(!rest) {
      rest = new FoodEx.Models.Restaurant({ id: id });
      rest.fetch({
        success: function () {
          rests.add(rest);
        },
      });
    } else {
      rest.fetch();
    }
    return rest;
  }
});
