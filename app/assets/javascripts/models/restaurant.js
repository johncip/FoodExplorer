FoodEx.Models.Restaurant = Backbone.Model.extend({
  urlRoot: 'api/restaurants',

  listing: function() {
    this._listing = this._listing ||
      new FoodEx.Models.Listing({}, {
        restaurant: this
      });
    return this._listing;
  },

  lists: function() {
    this._lists = this._lists || [];
    return this._lists;
  },

  categories: function() {
    this._categories = this._categories || [];
    return this._categories;
  },

  dining: function() {
    this._dining = this._dining ||
      new FoodEx.Models.Dining({}, {
        restaurant: this
      });
    return this._dining;
  },

  parse: function(payload) {
    if (payload.categories) {
      this._categories = payload.categories;
    }
    if (payload.lists) {
      this._lists = payload.lists;
    }
    if (payload.listing) {
      this.listing().set(payload.listing);
    }
    if (payload.dining) {
      this.dining().set(payload.dining);
    }
    return payload;
  }
});
