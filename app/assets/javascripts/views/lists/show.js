FoodEx.Views.ListShow = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, FoodEx.Mixins.WithSidebar, {
    template: JST['lists/show'],
    className: 'content-container clearfix',

    events: {
      'mouseenter .thumb-box li': 'onMouseenter',
    },

    onMouseenter: function() {
      var $li = $(event.target).parents('li');
      this.mapShow.bounceMarker($li.data('restaurant-id'));
    },

    initialize: function() {
      this.listenTo(this.model, 'sync', this.render);
      this.addSidebar();
      this.addThumbBox();
      this.addMapShow();
    },

    addMapShow: function() {
      var mapShow = new FoodEx.Views.MapShow({
        collection: this.model.restaurants()
      });
      this.addSubview('.map-container', mapShow);
      this.mapShow = mapShow;
    },

    addThumbBox: function() {
      var thumbBox = new FoodEx.Views.RestThumbBox({
        collection: this.model.restaurants(),
        model: this.model
      });
      this.addSubview('.thumb-box', thumbBox);
      this.thumbBox = thumbBox;
    },

    templateOpts: function() {
      return {
        list: this.model
      };
    },

    onRender: function() {
      Backbone.CompositeView.prototype.onRender.call(this);
      this.mapShow.initMap();
    }
  }));
