FoodEx.Collections.Lists = Backbone.Collection.extend ({
  url: 'api/lists',
  model: FoodEx.Models.List,
  comparator: 'ord',

  getOrFetch: function (id) {
    var list = this.get(id),
      lists = this;
    if(!list) {
      list = new FoodEx.Models.List({ id: id });
      list.fetch({
        success: function () {
          lists.add(list);
        },
      });
    } else {
      list.fetch();
    }
    return list;
  }
});
