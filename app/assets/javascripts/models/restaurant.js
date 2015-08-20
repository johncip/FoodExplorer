FoodEx.Models.Restaurant = Backbone.Model.extend ({
  urlRoot: 'api/restaurants',

  listing: function () {
    this._listing = this._listing ||
      new FoodEx.Models.Listing({}, { restaurant: this });
    return this._listing;
  },

  parse: function(payload) {
    if (payload.listing) {
      // if we parse again at this stage then we are truly lost
      this.listing().set(payload.listing);
    }
    return payload;
  }
});
