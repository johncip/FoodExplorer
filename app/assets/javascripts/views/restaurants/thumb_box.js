FoodEx.Views.RestThumbBox = Backbone.CompositeView.extend ({
  template: JST['restaurants/thumb_box'],

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
    this.listenTo(this.collection, 'sync', this.render);
    this.listenTo(this.collection, 'add', this.addThumb);
    this.collection.each(this.addThumb.bind(this));
  },

  addThumb: function (restaurant) {
    var thumb = new FoodEx.Views.RestThumb({
      model: restaurant
    });
    this.addSubview('ul', thumb);
  },

  render: function() {
    this.$el.html(this.template({
      list: this.model
    }));
    this.attachSubviews();
    this.onRender();
    return this;
  }
});
