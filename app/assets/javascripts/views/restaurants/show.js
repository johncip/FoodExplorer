FoodEx.Views.RestaurantShow = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, {
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

    addSidebar: function() {
      var sidebar = new FoodEx.Views.Sidebar({
        collection: FoodEx.lists,
        model: this.model
      });
      this.addSubview('.sidebar', sidebar);
    },

    addMapShow: function() {
      var mapShow = new FoodEx.Views.MapShow({
        model: this.model,
        parentView: this
      });
      this.addSubview('.map-container', mapShow);
      this.mapShow = mapShow;
    },

    onRender: function () {
      this.mapShow.initMap();
    }
  }));
