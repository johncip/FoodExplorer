FoodEx.Models.List = Backbone.Model.extend ({
  urlRoot: 'api/lists',

  restaurants: function () {
    this._restaurants = this._restaurants ||
      new FoodEx.Collections.Restaurants([], { list: this });
    return this._restaurants;
  },

  parse: function (payload) {
    // debugger;
    if (payload.model) {
      // debugger;
      this.set(payload.model);
    }
    this.restaurants().set(payload.restaurants, { parse: true });
    // debugger;
    return payload;
  }
});
