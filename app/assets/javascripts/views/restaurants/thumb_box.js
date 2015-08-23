FoodEx.Views.RestThumbBox = Backbone.CompositeView.extend(
  _.extend({}, FoodEx.Mixins.Orderable, FoodEx.Mixins.Renderable, {
    template: JST['shared/thumb_box'],
    className: 'restaurant-thumb-box-container',

    orderableOpts: {
      dataAttr: 'listing-id', // listings have ordering, not restaurants
      selector: 'li'
    },

    orderableModel: function(id) {
      return this.collection.getOrFetch(id).listing();
    },

    initialize: function() {
      this.listenTo(this.collection, 'add', this.addThumb);
      this.listenTo(this.collection, 'remove', this.removeThumb);
      this.collection.each(this.addThumb.bind(this));
    },

    highlightThumb: function(restaurant) {
      var thumbView = this.subviews('ul').find(function(subview) {
        return subview.model.id === restaurant.id;
      });

      thumbView.highlight();
    },

    removeThumb: function(restaurant) {
      this.removeModelSubview('ul', restaurant);
    },

    addThumb: function(restaurant) {
      var thumb = new FoodEx.Views.RestThumb({
        model: restaurant
      });
      this.addSubview('ul', thumb);
    },

    onRender: function() {
      Backbone.CompositeView.prototype.onRender.call(this);
      this.$('ul').sortable();
    }
  }));
