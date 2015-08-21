FoodEx.Views.ListShow = Backbone.CompositeView.extend({
  template: JST['lists/show'],
  className: 'lists-index clearfix',

  events: {
    'mouseenter .thumb-box li': 'onMouseenter',
  },

  onMouseenter: function() {
    var $li = $(event.target).parents('li');
    this.mapShow.bounceMarker($li.data('listing-id'));
  },

  initialize: function() {
    this.addSidebar();
    this.addThumbBox();
    this.addMapShow();
    this.listenTo(this.model, 'sync', this.render);
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

  onRender: function() {
    Backbone.CompositeView.prototype.onRender.call(this);
    this.mapShow.initMap();
  },

  render: function() {
    var content = this.template({
      list: this.model
    });
    this.$el.html(content);
    this.attachSubviews();
    this.onRender();
    return this;
  },
});
