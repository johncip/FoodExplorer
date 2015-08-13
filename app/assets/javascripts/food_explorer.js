window.FoodEx = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    // TODO add collection
    FoodEx.router = new FoodEx.Routers.Router($('#root'));
  }
};
