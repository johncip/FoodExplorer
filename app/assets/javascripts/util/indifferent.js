/*
  getOrFetch mixin for Backbone collections.

  Using getOrFetch will make the collection indifferent to whether or not
  the request model is already in the collection -- if it is, we return it,
  if not, we fetch it from the server.

  (Technically, Backbone.Model.fetch() is called in either case).
*/
FoodEx.Mixins.Indifferent = {
  getOrFetch: function(id) {
    var collection = this;
    var model = this.get(id);

    if (model) {
      model.fetch();
    } else {
      model = new collection.model({ id: id });
      collection.add(model);
      model.fetch({
        error: function() { collection.remove(model); }
      });
    }

    return model;
  }
};
