FoodEx.Views.NavBar = Backbone.View.extend(
  _.extend({}, FoodEx.Mixins.Renderable, {
    template: JST.navbar,
  }));
