FoodEx.Views.Welcome = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, FoodEx.Mixins.WithSidebar, {
    template: JST['welcome'],

    initialize: function() {
      this.addSidebar();
    }
  }));
