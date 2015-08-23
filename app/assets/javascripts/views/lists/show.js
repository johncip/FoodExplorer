FoodEx.Views.ListShow = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Renderable, {
    template: JST['lists/show'],
    className: 'content-container clearfix',

    events: {
      'mouseenter .thumb-box li': 'onMouseenter',
    },

    onMouseenter: function() {
      var $li = $(event.target).parents('li');
      this.mapShow.bounceMarker($li.data('listing-id'));
    },

    initialize: function() {
      this.listenTo(this.model, 'sync', this.render);
      this.addSidebar();
      this.addThumbBox();
      this.addMapShow();
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
        collection: this.model.restaurants(),
        parentView: this
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
