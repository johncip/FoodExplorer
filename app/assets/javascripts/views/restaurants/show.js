FoodEx.Views.RestaurantShow = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, FoodEx.Mixins.WithSidebar, {
    template: JST['restaurants/show'],
    className: 'content-container clearfix',

    initialize: function () {
      this.listenTo(this.model, 'sync', this.render);
      this.addSidebar();
      this.addMapShow();
    },

    templateOpts: function() {
      return { restaurant: this.model };
    },

    addMapShow: function() {
      var mapShow = new FoodEx.Views.MapShow({
        model: this.model
      });
      this.addSubview('.map-container', mapShow);
      this.mapShow = mapShow;
    },

    onRender: function () {
      this.mapShow.initMap();
    }
  }));
