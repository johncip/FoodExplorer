FoodEx.Models.List = Backbone.Model.extend({
  urlRoot: 'api/lists',

  restaurants: function () {
    this._restaurants = this._restaurants ||
      new FoodEx.Collections.Restaurants([], { list: this });
    return this._restaurants;
  },

  parse: function (payload) {
    if (payload.model) {
      this.set(payload.model);
    }
    if (payload.restaurants) {
      this.restaurants().set(payload.restaurants, { parse: true });
    }
    return payload;
  }
});
