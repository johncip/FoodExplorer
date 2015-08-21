window.FoodEx = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  Mixins: {},
  initialize: function() {
    FoodEx.lists = new FoodEx.Collections.Lists();
    FoodEx.router = new FoodEx.Routers.Router({
      $rootEl: $('#root'),
      lists: FoodEx.lists
    });

    FoodEx.lists.fetch();
  }
};
