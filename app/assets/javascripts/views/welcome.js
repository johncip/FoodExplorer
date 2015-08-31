FoodEx.Views.Welcome = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, FoodEx.Mixins.WithSidebar, {
    template: JST['welcome'],
    className: 'content-container clearfix',

    initialize: function() {
      this.addSidebar();
      this.addThumbBox();
    },

    addThumbBox: function() {
      var restys = new FoodEx.Collections.Restaurants();
      restys.getOrFetch(1);

      var thumbBox = new FoodEx.Views.RestThumbBox({
        collection: restys,
      });
      this.addSubview('.thumb-box', thumbBox);
      this.thumbBox = thumbBox;
    },
  }));
